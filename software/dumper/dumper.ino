
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

// UI
constexpr int PIN_BUTTON = 2;
constexpr int PIN_LED    = 3;

#include "SRecWriter.h"

//////////////////////// Global Variables

// Number of bytes received during dump
uint16_t g_count;

// ID Byte
uint8_t g_ID_byte;

// Start Vector
uint16_t g_start_vector;

// S19 Format writer component
SRecWriter g_writer;

// State variable
enum {
  STATE_WAITING,
  STATE_GETTING_ID,
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

  goToWaitingState();
}

void printHeader()
{
  Serial.println();
  Serial.println("PIC70XX / TMS70XX Dumper - v1.1");
  Serial.println("Dump will be of region 0xF000-0xFFFF (4K), in Motorola S-Record Format.");
  Serial.println("LED will light when dump is complete.");
  Serial.println("After dump, send a character or press button on PCB again to see chip ID");
  Serial.println();
  Serial.println("Send a character, or press button on PCB to begin dump...");
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

  g_writer.reset();
  g_writer.setSerial(Serial);
  g_count = 0;
  g_state = STATE_WAITING;
}

void goToGettingIDState()
{
  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_ID_byte = 0;
  g_state = STATE_GETTING_ID;
}

void goToDumpingState()
{
  // Reset pin high
  digitalWrite(PIN_nRESET, HIGH);

  g_count = 0;
  g_state = STATE_DUMPING;
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

void waitingStateLogic()
{
  // Clock pulse
  clockPulse();

  // If needed, clear SPDR
  if (SPSR & _BV(SPIF))
    volatile uint8_t x = SPDR;

  // If button pushed
  if (digitalRead(PIN_BUTTON) == LOW)
    goToGettingIDState();

  // if key hit
  if (Serial.available())
  {
    uint8_t c = Serial.read();
    goToGettingIDState();
  }

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

  goToDumpingState();
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

  // Grab the start vector when it comes through
  if (g_count == 0x0ffe)
    g_start_vector = ((uint16_t)(x)) << 8;
  if (g_count == 0x0fff)
    g_start_vector |= x;

  // Dump out in S19 format, until we have 4K
  if (g_count < 0x1000)
  {
    g_writer.addData(x);
    g_count++;
    if (g_count == 0x1000)
    {
      g_writer.finish();
      // LED on
      digitalWrite(PIN_LED, HIGH);
      goToWaiting2State();
    }
  }
}

void printID()
{
  Serial.println();
  switch (g_ID_byte)
  {
    case 0x00:
      Serial.println("Chip Identified as TMS/PIC7XX0 - 128 bytes RAM, No Serial Port");
    break;
    case 0x01:
      Serial.println("Chip Identified as TMS/PIC7XX1 - 128 bytes RAM, Serial Port");
    break;
    case 0x02:
      Serial.println("Chip Identified as TMS/PIC7XX? - 256 bytes RAM, No Serial Port??");
    break;
    case 0x03:
      Serial.println("Chip Identified as TMS/PIC7XX2 - 256 bytes RAM, Serial Port");
    break;
    case 0x80:
      Serial.println("Chip Identified as TMS/PIC7XX? - RAM Check failed, No Serial Port");
    break;
    case 0x81:
      Serial.println("Chip Identified as TMS/PIC7XX? - RAM Check failed, Serial Port");
    break;
    default:
      Serial.print("Chip Identification error - Chip returned: 0x");
      Serial.println(g_ID_byte, HEX);
    break;
  }
  Serial.print("Chip Start Vector = 0x");
  Serial.println(g_start_vector,HEX);
  Serial.println();
  Serial.println("Send a character, or press button on PCB to see ID info again,");
  Serial.println("or hit RESET button on Arduino Nano to restart dumper...");
}

void waiting2StateLogic()
{
  // If button pushed
  if (digitalRead(PIN_BUTTON) == LOW)
  {
    printID();
    goToWaiting2State();
  }

  // if key hit
  if (Serial.available())
  {
    uint8_t c = Serial.read();
    printID();
    goToWaiting2State();
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
