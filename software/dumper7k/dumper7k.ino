
// TMS70xx Dumper
//
// Connections:

// Arduino  -  TMS7000
// D2       -> CLKIN
// D8      <-  ADDR/DATA0         
// D9      <-  ADDR/DATA1
// D10     <-  ADDR/DATA2
// D11     <-  ADDR/DATA3
// D4      <-  ADDR/DATA4
// D5      <-  ADDR/DATA5
// D6      <-  ADDR/DATA6
// D7      <-  ADDR/DATA7
// D13      -> MC
// A0      <- ALATCH
// A1      <- R/~W
// A2      <- ~ENABLE
// A3      <- CLKOUT
// A4       -> ~RESET

// Interface to chip
constexpr int PIN_CLKIN   = 2;
constexpr int PIN_AD[8]   = { 8, 9, 10, 11, 4, 5, 6, 7 };
constexpr int PIN_MC      = 13;
constexpr int PIN_ALATCH  = A0;
constexpr int PIN_RnW     = A1;
constexpr int PIN_nENABLE = A2;
constexpr int PIN_CLKOUT  = A3;
constexpr int PIN_nRESET  = A4;
constexpr int PIN_nREAD   = A5;

// UI
constexpr int PIN_BUTTON = A7;
constexpr int PIN_LED    = 3;

#include "SRecWriter.h"

//////////////////////// Global Variables

// Number of bytes received during dump
uint16_t g_count;

// ID Byte
uint8_t g_ID_byte;

// Chip characteristics
String g_number = "Unknown";
uint16_t g_ram_bytes = 0;
uint16_t g_rom_bytes = 0;
bool g_serial_port = false;
bool g_cmos = false;

// bus state  - bit0-3
#define BIT_ALATCH  (1 << 0)
#define BIT_RnW     (1 << 1)
#define BIT_nENABLE (1 << 2)
#define BIT_CLKOUT  (1 << 3)
uint8_t g_last_bus_state = 0x0f;
uint8_t g_curr_bus_state = 0x0f;

// Start Vector
uint16_t g_start_vector;

// S19 Format writer component
SRecWriter g_writer;

// State variable
enum {
  STATE_GETTING_ID,
  STATE_WAITING,
  STATE_DUMPING,
  STATE_WAITING2,
} g_state;

// bus actions
typedef enum {
  BUS_ADDR_AVAILABLE,
  BUS_DATA_R_AVAILABLE,
  BUS_DATA_W_AVAILABLE,
  BUS_NOEVENT,
} bus_event_t;

typedef struct {
  bus_event_t bus_event;
  uint8_t     pin_mask_last;
  uint8_t     pin_state_last;
  uint8_t     pin_mask_curr;
  uint8_t     pin_state_curr;
} bus_event_def_t;

void setup() {
  pinMode(PIN_CLKIN, OUTPUT);
  for(int i=0; i<8; i++)
    pinMode(PIN_AD[i], INPUT);
  pinMode(PIN_MC, OUTPUT);
  pinMode(PIN_ALATCH, INPUT);  
  pinMode(PIN_RnW, INPUT);
  pinMode(PIN_nENABLE, INPUT);
  pinMode(PIN_CLKOUT, INPUT);
  pinMode(PIN_nRESET, OUTPUT);
  pinMode(PIN_nREAD, OUTPUT);

  pinMode(PIN_BUTTON, INPUT);
  pinMode(PIN_LED, OUTPUT);

  // Microprocessor mode (external ROM only)
  digitalWrite(PIN_MC, HIGH);
  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW);
  // Default to Read Mode
  digitalWrite(PIN_nREAD, LOW);

  // Enable serial port
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  goToGettingIDState();
}

// Function to do run one clock cycle
void clockPulse()
{
  static bool s_state = false;

  // Slow version
  if (s_state == false)
  {
    digitalWrite(PIN_CLKIN, LOW);
    s_state = true;
  }
  else
  {
    digitalWrite(PIN_CLKIN, HIGH);
    s_state = false;
  }

  // Faster version
  //PORTD &= ~0x20;
  //delayMicroseconds(2);
  //PORTD |= 0x20;
  //delayMicroseconds(2);

  // Update RnW
  if (digitalRead(PIN_RnW) == LOW)
  {
    digitalWrite(PIN_nREAD, HIGH); // invert
    g_curr_bus_state &= (BIT_RnW ^ 0x0f);
  }
  else
  {
    digitalWrite(PIN_nREAD, LOW); // invert
    g_curr_bus_state |= BIT_RnW;
  }

  // Update ALATCH  
  if (digitalRead(PIN_ALATCH) == LOW)
    g_curr_bus_state &= (BIT_ALATCH ^ 0x0f);
  else
    g_curr_bus_state |= BIT_ALATCH;

  // Update nENABLE
  if (digitalRead(PIN_nENABLE) == LOW)
    g_curr_bus_state &= (BIT_nENABLE ^ 0x0f);
  else
    g_curr_bus_state |= BIT_nENABLE;

  // Update CLKOUT  
  if (digitalRead(PIN_CLKOUT) == LOW)
    g_curr_bus_state &= (BIT_CLKOUT ^ 0x0f);
  else
    g_curr_bus_state |= BIT_CLKOUT;
}

bus_event_t processBusState()
{
  const bus_event_def_t event_def[] =
  {
    { BUS_ADDR_AVAILABLE,   BIT_ALATCH, 0, 
                            BIT_ALATCH, BIT_ALATCH },
    { BUS_DATA_R_AVAILABLE, BIT_nENABLE | BIT_RnW,               BIT_RnW,  
                            BIT_nENABLE | BIT_RnW, BIT_nENABLE | BIT_RnW },
    { BUS_DATA_W_AVAILABLE, BIT_nENABLE | BIT_RnW,                     0,
                            BIT_nENABLE | BIT_RnW, BIT_nENABLE },
    { BUS_NOEVENT,          0x00, 0x00, 
                            0x00, 0x00 },
  };

  uint8_t i=0;
  bool done = false;
  bus_event_t bus_event = BUS_NOEVENT;
  do
  {
    bus_event = event_def[i].bus_event;
    uint8_t last_trigger = g_last_bus_state & event_def[i].pin_mask_last;
    uint8_t curr_trigger = g_curr_bus_state & event_def[i].pin_mask_curr;
    if ((last_trigger == event_def[i].pin_state_last) &&
        (curr_trigger == event_def[i].pin_state_curr))
      break;
    i++;
  } while (bus_event != BUS_NOEVENT);
  g_last_bus_state = g_curr_bus_state;
  return bus_event;
}

void printHeader()
{
  // Process the ID Byte
  processIDByte();

  // Print sequence of parameters
  Serial.println();
  Serial.print(char(0x01));
  Serial.println("    Software: TMS7xxx Dumper - v1.3");

  Serial.print(char(0x01));
  Serial.print(  "  DetectedID: ");
  Serial.println(g_number);

  Serial.print(char(0x01));
  Serial.print(  "     RomSize: ");
  Serial.println(g_rom_bytes);

  Serial.print(char(0x01));
  Serial.print(  "     RamSize: ");
  Serial.println(g_ram_bytes);

  Serial.print(char(0x01));
  Serial.print(  "     Process: ");
  if (g_cmos)
  {
    Serial.println("CMOS");
  }
  else
  {
    Serial.println("NMOS");
  }

  Serial.println();
  if (g_serial_port)
    Serial.println("Serial Port Detected");

  if (g_ID_byte == 0xb || g_ID_byte == 0x13)
  {
    if (g_cmos)
      Serial.println("Note: Could be TMS77Cxx if part has a UV window (possibly under a sticker)");
    else
      Serial.println("Note: Could be TMS77xx if part has a UV window (possibly under a sticker)");
  }

  if (!g_cmos)
    if (g_ID_byte == 0x0 || g_ID_byte == 0x01 || g_ID_byte == 0x04 || g_ID_byte == 0x08 || g_ID_byte == 0x09)
      Serial.println("Note: Could be a PIC70XX");

  if (g_rom_bytes == 0x4000)
    Serial.println("Note: Piggyback part, record info about inserted chip.");

  Serial.println();

  //Serial.print("ID Byte: 0x");
  //Serial.println(g_ID_byte, HEX);
  //Serial.println();

  if (g_rom_bytes > 0)
  {
    Serial.print("Dump will be of region ");
    if (g_rom_bytes == 0x0800)
      Serial.print("0xF800-0xFFFF (2K)");
    if (g_rom_bytes == 0x1000)
      Serial.print("0xF000-0xFFFF (4K)");
    if (g_rom_bytes == 0x2000)
      Serial.print("0xE000-0xFFFF (8K)");
    if (g_rom_bytes == 0x3000)
      Serial.print("0xD000-0xFFFF (12K)");
    if (g_rom_bytes == 0x4000)
      Serial.print("0xC000-0xFFFF (16K)");
    Serial.println(", in Motorola S-Record Format.");

    Serial.println("LED will light when dump is complete.");
    Serial.println();
    Serial.println("Hit a key, or press button on PCB to begin dump...");
  }
  else
  {
    Serial.println("No Internal ROM to dump.");
    Serial.println();
    Serial.println("Hit a key, or press button on PCB to restart identification...");
  }
}

void goToGettingIDState()
{
  // Clear keyboard buffer
  while (Serial.available())
    Serial.read();

  // wait for key release
  while (analogRead(PIN_BUTTON) < 512);
  
  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW);

  // Clock some while reset
  for (int i = 0; i < 200; i++) {
    clockPulse();
  }

  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_ID_byte = 0;
  g_state = STATE_GETTING_ID;
}

void processIDByte()
{
  //Serial.println(analogRead(PIN_ANALOG));
  //Do not touch the board when detecting process, it can erroneously read as CMOS
  if (analogRead(PIN_RnW) > 880) //determined with exactly 2 chips on this platform (arduino nano)
    g_cmos = true;

  if (g_ID_byte & 0x01)
    g_serial_port = true;
  else
    g_serial_port = false;
  
  if (g_ID_byte & 0x02)
    g_ram_bytes = 0x100;
  else
    g_ram_bytes = 0x80;
  g_rom_bytes = ((g_ID_byte & 0x3c) >> 2) * 0x0800;

  switch (g_ID_byte) {
    case 0x00:
      if (g_cmos)
        g_number = "TMS70C00";
      else
        g_number = "TMS7000"; // could be a PIC
      break;
    case 0x01:
      if (g_cmos)
        g_number = "TMS70C01";
      else
        g_number = "TMS7001"; // could be a PIC
      break;
    case 0x02:
      if (g_cmos)
        g_number = "Unknown_TMS70C0x";
      else
        g_number = "Unknown_TMS700x";
      break;
    case 0x03:
      if (g_cmos)
        g_number = "TMS70C02";
      else
        g_number = "TMS7002";
      break;
    case 0x04:
      if (g_cmos)
        g_number = "TMS70C20";
      else
        g_number = "TMS7020"; // could be a PIC
      break;
    case 0x05:
      if (g_cmos)
        g_number = "TMS70C21";
      else
        g_number = "TMS7021";
      break;
    case 0x06:
      if (g_cmos)
        g_number = "Unknown_TMS70C2x";
      else
        g_number = "Unknown_TMS702x";
      break;
    case 0x07:
      if (g_cmos)
        g_number = "TMS70C22";
      else
        g_number = "TMS7022";
      break;
    case 0x08:
      if (g_cmos)
        g_number = "TMS70C40";
      else
        g_number = "TMS7040"; // could be a PIC
      break;
    case 0x09:
      if (g_cmos)
        g_number = "TMS70C41";
      else
        g_number = "TMS7041"; // could be a PIC
      break;
    case 0x0a:
      if (g_cmos)
        g_number = "Unknown_TMS70C4x";
      else
        g_number = "Unknown_TMS704x";
      break;
    case 0x0b:
      if (g_cmos)
        g_number = "TMS70C42"; // could be a 77C42 if it has a UV window
      else
        g_number = "TMS7042"; // could be a 7742 if it has a UV window
      break;
    case 0x0c:  // 6K ROM?
    case 0x0d:  // 6K ROM?
    case 0x0e:  
    case 0x0f:  // 6K ROM?
      if (g_cmos)
        g_number = "Unknown_TMS70Cxx";
      else
        g_number = "Unknown_TMS70xx";
      break;
    case 0x10:
      if (g_cmos)
        g_number = "TMS70C80";
      else
        g_number = "Unknown_TMS7080";
      break;
    case 0x11:
      if (g_cmos)
        g_number = "TMS70C81";
      else
        g_number = "Unknown_TMS7081";
      break;
    case 0x12:
      if (g_cmos)
        g_number = "Unknown_TMS70C8x";
      else
        g_number = "Unknown_TMS708x";
      break;
    case 0x13:
      if (g_cmos)
        g_number = "TMS70C82"; // could be a 77C82 if it has a UV window
      else
        g_number = "Unknown_TMS7082";
      break;
    case 0x14:  // 10K ROM?
    case 0x15:  // 10K ROM?
    case 0x16:
    case 0x17:  // 10K ROM?
      if (g_cmos)
        g_number = "Unknown_TMS70Cxx";
      else
        g_number = "Unknown_TMS70xx";
      break;
    case 0x18:
      if (g_cmos)
        g_number = "Unknown_TMS70C120";
      else
        g_number = "TMS70120";
      break;
    case 0x19:
      if (g_cmos)
        g_number = "Unknown_TMS70C121";
      else
        g_number = "TMS70121";
      break;
    case 0x1a:
      if (g_cmos)
        g_number = "Unknown_TMS70C12x";
      else
        g_number = "Unknown_TMS7012x";
    break;
    case 0x1b:
      if (g_cmos)
        g_number = "Unknown_TMS70C122";
      else
        g_number = "TMS70122";
      break;    
    case 0x1c:  // 14K ROM?
    case 0x1d:  // 14K ROM?
    case 0x1e:
    case 0x1f:  // 14K ROM?
      if (g_cmos)
        g_number = "Unknown_TMS70Cxxx";
      else
        g_number = "Unknown_70xxx";
      break;
    case 0x20:
      if (g_cmos)
        g_number = "SE70CP160"; // Piggyback
      else
        g_number = "Unknown_SE70P160"; // Piggyback
      break;
    case 0x21:
      if (g_cmos)
        g_number = "SE70CP161"; // Piggyback
      else
        g_number = "SE70P161"; // Piggyback
      break;
    case 0x22:
      if (g_cmos)
        g_number = "Unknown_SE70CP16x"; // Piggyback
      else
        g_number = "Unknown_SE70P16x"; // Piggyback
      break;
    case 0x23:
      if (g_cmos)
        g_number = "SE70CP162"; // Piggyback
      else
        g_number = "SE70P162"; // Piggyback
      break;     
  }
}

// Grab a byte from the addr/data bus
uint8_t readAddrDataBus()
{
  uint8_t rv = 0x00;
  for(uint8_t i=0;i<8;i++)
  {
    if (digitalRead(PIN_AD[i]) == HIGH)
      rv |= (1 << i);    
  }
  return rv;  
}

void gettingIDStateLogic()
{
  static int s_cycle = 0;
  static uint8_t s_addr = 0;
  static bool s_seen_0x55 = false;

  // Clock pulse
  clockPulse();

  // If no byte, clock some more
  bus_event_t bus_event = processBusState();
//#define DEBUG_BUS
#ifdef DEBUG_BUS
  for(int i=3;i>=0;i--)
  {
    if ((g_last_bus_state >> i) & 0x01)
      Serial.print('1');
    else
      Serial.print('0');
    Serial.print(' ');
  }
  Serial.print(bus_event);
  Serial.print(' ');
  uint8_t bus = readAddrDataBus();
  Serial.print(bus,HEX);
  Serial.print(' ');
  Serial.println(s_cycle);
#endif
  s_cycle++;
  
//  if (bus_event != BUS_NOEVENT)
//  {
//    uint8_t bus = readAddrDataBus();
//    Serial.print((int)bus_event);
//    Serial.print(' ');
//    Serial.println(bus,HEX);
//  }

  if (bus_event == BUS_ADDR_AVAILABLE)
  {
    s_addr = readAddrDataBus();
    return;
  }

  if (bus_event != BUS_DATA_W_AVAILABLE)
    return;

  uint8_t data = readAddrDataBus();
  //Serial.print("Write ");
  //Serial.print(data, HEX);
  //Serial.print(" to XX");
  //if (s_addr < 16)
  //  Serial.print('0');
  //Serial.println(s_addr,HEX);

  if (!s_seen_0x55)
  {
    if (data != 0x55)
      return;
    else
    {
      s_seen_0x55 = true;
      digitalWrite(PIN_MC, LOW);
      return;
    }
  }

  g_ID_byte = data;

  s_seen_0x55 = false;
  goToWaitingState();

}

void goToWaitingState()
{
  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW);

  // Clock some while reset
  for (int i = 0; i < 200; i++) {
    clockPulse();
  }

  // Print header
  printHeader();

  // Clear keyboard buffer
  while (Serial.available())
    Serial.read();

  // wait for key release
  while (analogRead(PIN_BUTTON) < 512);

  g_writer.reset();
  g_writer.setSerial(Serial);
  g_count = 0;
  g_state = STATE_WAITING;
}

void waitingStateLogic()
{
  // Clock pulse
  clockPulse();

  // If button pushed
  if (analogRead(PIN_BUTTON) < 512)
    if (g_rom_bytes == 0)
      goToGettingIDState();
    else
      goToDumpingState();

  // if key hit
  if (Serial.available())
  {
    uint8_t c = Serial.read();
    if (g_rom_bytes == 0)
      goToGettingIDState();
    else
      goToDumpingState();
  }
}

void goToDumpingState()
{
  // MC high again
  digitalWrite(PIN_MC, HIGH);

  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW);

  // Clock some while reset
  for (int i = 0; i < 100; i++) {
    clockPulse();
  }

  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_state = STATE_DUMPING;
}

void dumpingStateLogic()
{
  static bool s_seen_0x55 = false;

  // Clock pulse
  clockPulse();

  // If no byte, clock some more
  bus_event_t bus_event = processBusState();
  if (bus_event != BUS_DATA_W_AVAILABLE)
    return;

  uint8_t data = readAddrDataBus();
  if (!s_seen_0x55)
  {  
    if (data != 0x55)
      return;
    else  
    {
      s_seen_0x55 = true;
      digitalWrite(PIN_MC, LOW);
      return;
    }
  }

  // Grab the data byte
  uint8_t x = readAddrDataBus();

  if (g_count == 0)
  {
    // This is just the id again, ignore it
    g_count++;
    return;
  }

  // Dump out in S19 format, until we have the full dump
  if (g_count < g_rom_bytes + 1)
  {
    g_writer.addData(x);
    g_count++;
    if (g_count == g_rom_bytes + 1)
    {
      g_writer.finish();
      // LED on
      digitalWrite(PIN_LED, HIGH);
      s_seen_0x55 = false;
      goToWaiting2State();
    }
  }
}

void goToWaiting2State()
{
  // Clear keyboard buffer
  while (Serial.available())
    Serial.read();

  // wait for key release
  while (analogRead(PIN_BUTTON) < 512);

  g_state = STATE_WAITING2;
}

void printDone()
{
  Serial.println();
  Serial.println("Dump Complete.  Restarting...");
}

void waiting2StateLogic()
{
  // If button pushed
  if (analogRead(PIN_BUTTON) < 512)
  {
    printDone();
    goToGettingIDState();
  }

  // if key hit
  if (Serial.available())
  {
    uint8_t c = Serial.read();
    printDone();
    goToGettingIDState();
  }
}

void loop() {

  if (g_state == STATE_WAITING)
  {
    waitingStateLogic();
  }
  else if (g_state == STATE_GETTING_ID)
  {
    gettingIDStateLogic();
  }
  else if (g_state == STATE_DUMPING)
  {
    dumpingStateLogic();
  }
  else { // g_state = STATE_WAITING2
    waiting2StateLogic();
  }
}
