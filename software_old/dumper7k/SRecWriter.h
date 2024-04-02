#ifndef SRecWriter_h
#define SRecWriter_h

#include "Arduino.h" 

// Simple S-Record format writer
// https://en.wikipedia.org/wiki/SREC_(file_format)
//
// (Only works for 8-bit data, 16-bit address files)
// (Record types S0, S1, S5, and S9)

class SRecWriter {
public:
  // Create a Writer
  SRecWriter();
  // Reset the state to completely uninitialized
  void reset();
  // Pass in Serial port to write to
  void setSerial(const Stream &s);
  // Set the current address, defaults to 0x000 at startup
  void setAddress(uint16_t address);
  // Write a data byte
  void addData(uint8_t data);
  // Finish writing the file - optional execution address
  void finish(uint16_t exec_address = 0x0000);

  // Uses 32 bytes of data per line
  static constexpr uint8_t LINE_LENGTH = 0x20;
  
private:
  void writeS0(void);
  void writeS1(void);
  void writeS5S9(uint16_t exec_address);
  void printHex8(uint8_t x);
  void printHex16(uint16_t x);

  const Stream *serial;
  bool S0_written = false;
  uint16_t line_address;
  uint8_t line_offset;
  uint8_t line_buf[LINE_LENGTH];
  uint8_t checksum;
  uint16_t line_count;
};

#endif
