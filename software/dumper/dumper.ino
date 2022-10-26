
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

// globals
uint16_t g_count;
uint16_t g_checksum;

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
  // (protocol is compatible with default settings)
  SPCR |= _BV(SPE); 

  // Enable serial port
  Serial.begin(250000);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  // Clock some while reset
  for(int i=0; i<100; i++) {
    clockPulse();
  }

  // Reset pin high
  digitalWrite(nRESET_PIN, HIGH);

  // Init globals
  g_count = 0;
  g_checksum = 0;
}

void loop() {
  // Clock pulse
  clockPulse();
  
  // If no byte, clock some more
  if (!(SPSR & _BV(SPIF)))
    return;

  // Grab the data byte
  volatile uint8_t x = SPDR;
  
  // S-Record header
  if (g_count == 0)
  {
    Serial.println();
    Serial.println("PIC70XX / TMS70XX Dumper - v1.0");
    Serial.println("Dump of region 0xF000-0xFFFF (4K), in Motorola S-Record Format:");
    Serial.print("S00600004844521B");
  }
  // Beginning of S1 line
  if (g_count%0x20 == 0)
  {
    g_checksum = 0;
    Serial.println();
    Serial.print("S123");
    if (g_count < 0x0010)
      Serial.print("000");
    else if (g_count < 0x0100)
      Serial.print("00");
    else if (g_count < 0x1000)
      Serial.print("0");
    Serial.print(g_count, HEX);
  }
  // Add the data byte
  if (x<0x10)
    Serial.print("0");
  Serial.print(x, HEX);
  // Increment Checksum
  g_checksum += x;
  // Write checksum byte and reset checksum
  if (g_count%0x20 == 0x1f)
  {
    g_checksum ^= 0xff;
    if (g_checksum < 0x10)
      Serial.print("0");
    Serial.print(g_checksum, HEX);
    g_checksum = 0;
  }
  // Write final part of file
  if (g_count%0x1000 == 0x0fff)
  {
    Serial.println();
    Serial.println("S50300807C");
    Serial.println("S9030000FC");
  }
  g_count++;

}
