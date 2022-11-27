
# Internal ROM dumper for PIC70xx and TMS70xx chips

Texas Instruments made a series of chips based on the TMS7000 microprocessor, which contain internal programs in mask ROM.
General Instrument / Microchip made versions of these chips as well.

This project uses some external code to dump the normally hidden mask ROM, and feed it to a host PC.
In addition, it can identify the type of chip (last digit of part number)

# Dumper Compatible Chips (all 40 pin DIPs):

| 128 bytes RAM | 256 bytes RAM | 256 bytes RAM, Serial Port, etc. | ROM |
| --- | --- | --- | --- |
| TMS7020 | TMS7021 | TMS7022 | 2K |
| TMS7040 | TMS7041 | TMS7042 | 4K |
| PIC7020 | PIC7021 | PIC7022 | 2K |
| PIC7040 | PIC7041 | PIC7042 | 4K |

In addition, at least one commercial IC with a different label is actually one of these internally.
For example, the CTS256A-AL2, which was sold at Radio Shack, is actually a PIC7041.

# Instructions:

- Program a 2K 2716-compatible EPROM or FLASH chip with the dumper.bin (Trojan program)
- Program the Arduino Nano with the sketch dumper.ino
- Connect via serial terminal, baud rate 115200, 8N1.
- Follow the instructions on screen to dump the rom as a Motorola S-Record format file to the screen,
and identify the chip type.
- Save S-Record lines to a .s19 file
- Convert file to binary using srec_cat, or similar tool:

`srec_cat -o <filename>.bin -Binary <filename>.s19`

