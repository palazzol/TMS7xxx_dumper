
// PIC70XX / TMS70XX Dumper
//
// Connections:

// Arduino - TMS7000   - DIP PIN
// D5      - CLKIN     - PIN 17
// D7      - ~RESET    - PIN 14 
// D10     - SS / B3   - PIN 37
// D11     - MOSI / B1 - PIN 4
// D13     - CLK / B2  - PIN 5

constexpr int CLKIN_PIN=5;
constexpr int nRESET_PIN=7;
constexpr int SS_PIN=10;
constexpr int MOSI_PIN=11;
constexpr int MISO_PIN=12;
constexpr int CLK_PIN=13;

#include "SRecWriter.h"

// globals
uint16_t g_count;
SRecWriter g_writer;

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
  // put your setup code here, to run once:
  pinMode(CLKIN_PIN, OUTPUT);
  pinMode(nRESET_PIN, OUTPUT);
  pinMode(SS_PIN, INPUT);
  pinMode(MOSI_PIN, INPUT);
  pinMode(CLK_PIN, INPUT);
  pinMode(MISO_PIN, OUTPUT);      // MISO needs to be an output
  
  // Reset pin low
  digitalWrite(nRESET_PIN, LOW);

  // Enable SPI in slave mode
  // (protocol is compatible with default SPI settings)
  SPCR |= _BV(SPE); 

  // Enable serial port
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  g_writer.setSerial(Serial);
  
  // Clock some while reset
  for(int i=0; i<100; i++) {
    clockPulse();
  }

  // Reset pin high
  digitalWrite(nRESET_PIN, HIGH);

  // Init globals
  g_count = 0;

  // Print header
  Serial.println();
  Serial.println("PIC70XX / TMS70XX Dumper - v1.0");
  Serial.println("Dump of region 0xF000-0xFFFF (4K), in Motorola S-Record Format:");
}

void loop() {
  // Clock pulse
  clockPulse();
  
  // If no byte, clock some more
  if (!(SPSR & _BV(SPIF)))
    return;

  // Grab the data byte
  volatile uint8_t x = SPDR;

  // Dump out in S19 format, until we have 4K
  if (g_count < 0x1000)
  {
    g_writer.addData(x);
    g_count++;
    if (g_count == 0x1000)
      g_writer.finish();
  }
}
