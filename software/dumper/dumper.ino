
// PIC70XX / TMS70XX Dumper
//
// Connections:

// Arduino - TMS7000   - DIP PIN
// D5      - CLKIN     - PIN 17
// D7      - ~RESET    - PIN 14 
// D10     - SS / B3   - PIN 37
// D11     - MOSI / B1 - PIN 4
// D13     - CLK / B2  - PIN 5

// Interface to chip
constexpr int PIN_CLKIN  = 5;
constexpr int PIN_nRESET = 7;
constexpr int PIN_SS     = 10;
constexpr int PIN_MOSI   = 11;
constexpr int PIN_MISO   = 12;
constexpr int PIN_SCK    = 13;
constexpr int PIN_ANALOG = A0;

// UI
constexpr int PIN_BUTTON = 2;
constexpr int PIN_LED    = 3;

#include "SRecWriter.h"

//////////////////////// Global Variables

// Number of bytes received during dump
uint16_t g_count;

// ID Byte
uint8_t g_ID_byte;

// Chip characteristics
char g_number[5] = "70XX";
uint16_t g_ram_bytes = 0;
uint16_t g_rom_bytes = 0;
bool g_serial_port = false;

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

// Function to do run one clock cycle
void clockPulse()
{
  // Slow version
  //digitalWrite(CLKIN_PIN, LOW);
  //digitalWrite(CLKIN_PIN, HIGH);

  // Faster version
  PORTD &= ~0x20;
  delayMicroseconds(2);
  PORTD |= 0x20;
  delayMicroseconds(2);
}

void setup() {
  pinMode(PIN_CLKIN, OUTPUT);
  pinMode(PIN_nRESET, OUTPUT);
  pinMode(PIN_SS, INPUT);
  pinMode(PIN_MOSI, INPUT);
  pinMode(PIN_SCK, INPUT);
  pinMode(PIN_MISO, OUTPUT);      // MISO needs to be an output
  pinMode(PIN_ANALOG, INPUT);

  pinMode(PIN_BUTTON, INPUT_PULLUP);
  pinMode(PIN_LED, OUTPUT);

  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW); 

  // Enable SPI in slave mode
  // (protocol is compatible with default SPI settings)
  SPCR |= _BV(SPE); 

  // Enable serial port
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  goToGettingIDState();
}

void printHeader()
{
  // Print sequence of parameters
  Serial.println();
  Serial.print(char(0x01));
  Serial.println("    Software: PIC70XX / TMS70XX Dumper - v1.2");

  Serial.print(char(0x01));
  Serial.print(  "      ChipID: TMS-PIC");
  Serial.print(g_number[0]);
  Serial.print(g_number[1]);
  if (analogRead(PIN_ANALOG) > 939)
    Serial.print('C');
  Serial.print(g_number[2]);
  Serial.println(g_number[3]);

  Serial.print(char(0x01));
  Serial.print(  "     RomSize: ");
  Serial.println(g_rom_bytes);

  Serial.print(char(0x01));
  Serial.print(  "     RamSize: ");
  Serial.println(g_ram_bytes);

  Serial.println();
  if (g_serial_port)
    Serial.println("Serial Port Detected");
  Serial.println();

  //Serial.print("ID Byte: 0x");
  //Serial.println(g_ID_byte, HEX);
  //Serial.println();
  
  if (g_rom_bytes > 0)
  {
    if (g_rom_bytes == 2048)
      Serial.println("Dump will be of region 0xF800-0xFFFF (2K), in Motorola S-Record Format.");
    else // g_rom_bytes == 4096
      Serial.println("Dump will be of region 0xF000-0xFFFF (4K), in Motorola S-Record Format.");
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
  while (digitalRead(PIN_BUTTON) == LOW);

  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_ID_byte = 0;
  g_state = STATE_GETTING_ID;
}

void gettingIDStateLogic()
{
  // Clock pulse
  clockPulse();

  // If no byte, clock some more
  if (!(SPSR & _BV(SPIF)))
    return;

  // Grab the data byte
  g_ID_byte = SPDR;

  if (g_ID_byte <= 0x0b)
  {
    switch(g_ID_byte) {
      case 0x00:
        g_number[2] = '0';
        g_number[3] = '0';
        g_ram_bytes = 128;
        g_rom_bytes = 0;
        g_serial_port = false;
      break;
      case 0x01:
        g_number[2] = '0';
        g_number[3] = '1';
        g_ram_bytes = 128;
        g_rom_bytes = 0;
        g_serial_port = true;
      break;
      case 0x02:
        g_number[2] = '0';
        g_number[3] = '?';
        g_ram_bytes = 256;
        g_rom_bytes = 0;
        g_serial_port = false;
      break;
      case 0x03:
        g_number[2] = '0';
        g_number[3] = '2';
        g_ram_bytes = 256;
        g_rom_bytes = 0;
        g_serial_port = true;
      break;
      case 0x04:
        g_number[2] = '2';
        g_number[3] = '0';
        g_ram_bytes = 128;
        g_rom_bytes = 2048;
        g_serial_port = false;
      break;
      case 0x05:
        g_number[2] = '2';
        g_number[3] = '1';
        g_ram_bytes = 128;
        g_rom_bytes = 2048;
        g_serial_port = true;
      break;
      case 0x06:
        g_number[2] = '2';
        g_number[3] = '?';
        g_ram_bytes = 256;
        g_rom_bytes = 2048;
        g_serial_port = false;
      break;
      case 0x07:
        g_number[2] = '2';
        g_number[3] = '2';
        g_ram_bytes = 256;
        g_rom_bytes = 2048;
        g_serial_port = true;
      break;
      case 0x08:
        g_number[2] = '4';
        g_number[3] = '0';
        g_ram_bytes = 128;
        g_rom_bytes = 4096;
        g_serial_port = false;
      break;
      case 0x09:
        g_number[2] = '4';
        g_number[3] = '1';
        g_ram_bytes = 128;
        g_rom_bytes = 4096;
        g_serial_port = true;
      break;
      case 0x0a:
        g_number[2] = '4';
        g_number[3] = '?';
        g_ram_bytes = 256;
        g_rom_bytes = 4096;
        g_serial_port = false;
      break;
      case 0x0b:
        g_number[2] = '4';
        g_number[3] = '2';
        g_ram_bytes = 256;
        g_rom_bytes = 4096;
        g_serial_port = true;
      break;
    }
  }

  goToWaitingState();
}

void goToWaitingState()
{
  // Reset pin low
  digitalWrite(PIN_nRESET, LOW);
  // LED off
  digitalWrite(PIN_LED, LOW); 

  // Clock some while reset
  for(int i=0; i<100; i++) {
    clockPulse();
  }

  // Print header
  printHeader();

  // Clear keyboard buffer
  while (Serial.available())
    Serial.read();

  // wait for key release
  while (digitalRead(PIN_BUTTON) == LOW);

  g_writer.reset();
  g_writer.setSerial(Serial);
  g_count = 0;
  g_state = STATE_WAITING;
}

void waitingStateLogic()
{
  // Clock pulse
  clockPulse();

  // If needed, clear SPDR
  if (SPSR & _BV(SPIF))
    volatile uint8_t x = SPDR;

  // If button pushed
  if (digitalRead(PIN_BUTTON) == LOW)
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
  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_state = STATE_DUMPING;
}

void dumpingStateLogic()
{
  // Clock pulse
  clockPulse();

  // If no byte, clock some more
  if (!(SPSR & _BV(SPIF)))
    return;

  // Grab the data byte
  volatile uint8_t x = SPDR;

  if (g_count == 0)
  {
    // This is just the id again, ignore it
    g_count++;
    return;
  }

  // Dump out in S19 format, until we have the full dump
  if (g_count < g_rom_bytes+1)
  {
    g_writer.addData(x);
    g_count++;
    if (g_count == g_rom_bytes+1)
    {
      g_writer.finish();
      // LED on
      digitalWrite(PIN_LED, HIGH);
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
  while (digitalRead(PIN_BUTTON) == LOW);

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
  if (digitalRead(PIN_BUTTON) == LOW)
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
