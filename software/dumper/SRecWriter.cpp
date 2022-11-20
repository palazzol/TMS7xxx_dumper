
#include "SRecWriter.h"

SRecWriter::SRecWriter()
{
  reset();
}

void SRecWriter::reset()
{
  serial = nullptr;   
  S0_written = false;
  line_address = 0x0000;
  line_offset = 0x00;
  checksum = 0x00; 
  line_count = 0x0000;
}

void SRecWriter::setSerial(const Stream &s)
{
  serial = &s;
}
  
// If address == current_address do nothing return
// If in middle of a line, finish line, return
// Set address, return
void SRecWriter::setAddress(uint16_t address)
{
  serial->println();
  serial->println(line_address,HEX);
  serial->println(line_offset,HEX);
  serial->println(address,HEX);
  if (line_address+line_offset == address) return;
  if (line_offset != 0) {
    writeS1();
  }
  line_address = address;
}

// If in middle of a line, add byte, display, finish line, return
// If !started, writeS0
// If at start of line, write address
void SRecWriter::addData(uint8_t data)
{
  line_buf[line_offset] = data;
  line_offset++;
  if (line_offset == LINE_LENGTH) {
    writeS1();
  }
}

void SRecWriter::finish(uint16_t exec_address)
{
  if (line_offset != 0) {
    writeS1();
  }
  writeS5S9(exec_address);
}

void SRecWriter::writeS0()
{
  // S0 Record, no real content here
  serial->println("S00600004844521B");
  S0_written = true;  
}

void SRecWriter::writeS1()
{
  if (!S0_written) writeS0();
  serial->print("S1");
  printHex8(line_offset+3);
  printHex16(line_address);
  for(uint8_t i=0; i<line_offset; i++)
    printHex8(line_buf[i]);
  printHex8(checksum^0xff);
  serial->println();
  checksum = 0;
  line_address = line_address + line_offset;
  line_offset = 0;
  line_count++;
}

void SRecWriter::writeS5S9(uint16_t exec_address)
{
  serial->print("S5");
  printHex8(3);
  printHex16(line_count);
  printHex8(checksum^0xff);
  serial->println();
  checksum = 0;
  
  serial->print("S9");
  printHex8(3);
  printHex16(exec_address);
  printHex8(checksum^0xff);
  serial->println();
  checksum = 0;
}

void SRecWriter::printHex8(uint8_t x)
{
  if (x < 0x10)
    serial->print("0");
  serial->print(x, HEX);
  checksum += x;
}

void SRecWriter::printHex16(uint16_t x)
{
  if (x < 0x10) {
    serial->print("000");
  } else if (x < 0x100) {
    serial->print("00");
  } else if (x < 0x1000) {
    serial->print("0");
  }
  serial->print(x, HEX);
  checksum += ((x>>8)&0xff);
  checksum += (x&0xff);
}
