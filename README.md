
# Internal ROM dumper for TMS7xxx series chips

Texas Instruments made a series of chips based on the TMS7000 microprocessor, which can contain internal programs in mask ROM.
General Instrument / Microchip made versions of these chips as well (PIC7000 series).

In addition, at least one commercial IC with a different label is actually one of these internally.
For example, the CTS256A-AL2, which was sold at Radio Shack, is actually a PIC7041.

This design supports all known chips in the series, including:
PIC70XX, TMS70XX, TMS70XXX, TMS77XX, TMS70CXX, and TMS77CXX

This project uses some external code to dump the normally hidden mask ROM, and feed it to a host PC.
In addition, it can identify the type of chip by determining the following parameters:
- RAM size
- ROM size
- Presence of Serial Port
- Process (NMOS or CMOS)

# Instructions:

- Program a 4K 2732-compatible EPROM or FLASH chip with the dumper.bin (Trojan program)
- Program the Arduino Nano with the sketch dumper7k.ino
- Connect via serial terminal, baud rate 115200, 8N1.
- Follow the instructions on screen to identify the chip type and dump any internal rom as a Motorola S-Record format file to the screen
- Save S-Record lines to a .s19 file
- Convert file to binary using srec_cat, or similar tool:

`srec_cat -o <filename>.bin -Binary <filename>.s19`
