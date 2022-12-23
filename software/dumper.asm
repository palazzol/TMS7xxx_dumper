;
; Original Code and hardware by Frank Palazzolo
; Code written and working sometime in the early 2000's
; Source Reverse-engineered from Binary(!)
; And updated for standard SPI master interface - 2022-October
; Added Chip ID functions, 2022-November
;
; This code can be built with TASM Version 3.2:
;   tasm -70 -g3 -fff -s -c dumper.asm dumper.bin
;
; Dumper code for PIC70XX, TMS70XX, TMS70XXX, TMS77XX, TMS70CXX, and TMS77CXX chips
;
; Hardware connections:
;
; ~INT1 and ~INT3 wired to +5 - pins 13 and 12 on DIP
; Port B, bit 0 - Pin 3 on DIP  - MC Pin is connected here, along with a 4.7k pullup 
; Port B, bit 1 - Pin 4 on DIP  - MOSI - Bits appear here
; Port B, bit 2 - Pin 5 on DIP  - SCLK - Rising Edge happens during bit
; Port B, bit 3 - Pin 37 on DIP - ~SS
;
; When External Memory is enabled:
;
; Port B, bit 4 - Pin 38 on DIP - ALATCH
; Port B, bit 5 - Pin 1 on DIP  - R/~W 
; Port B, bit 6 - Pin 39 on DIP - ~ENABLE
; Port B, bit 7 - Pin 2 on DIP  - CLKOUT 
; Port C, all   - Address Low / Data Bus
; Port D, all   - Address High Bus

; Chip starts up in Microprocessor mode, executing ROM from external memory
; 1) Code checks ram size and for presence of serial port, to generate initial ID byte
; 2) Trojan Code segment is copied from external ROM to internal RAM
; 3) Jump to code in internal RAM 
; 4) Switch modes, enabling internal ROM 
; 5) Code determines internal ROM size and adjusts ID byte
; 6) Code clocks out bytes via SPI:
;    ID byte, followed by 0K, 2K, or 4K bytes

; RAM Layout
; 0x00-0x07 - A,B,R2-R7 Used as general purpose storage
; 0x08-0x7C - Used for Trojan program
; 0x7D-0x7E - Spare
; 0x7F      - used to determine RAM size

; ID Byte -
;     0x00 - 0b00000000 - 128 bytes of ram, 0K ROM
;     0x01 - 0b00000001 - 128 bytes of ram, serial port, 0K ROM
;     0x02 - 0b00000010 - 256 bytes of ram, 0K ROM
;     0x03 - 0b00000011 - 256 bytes of ram, serial port, 0K ROM
;     0x04 - 0b00000100 - 128 bytes of ram, 2K ROM
;     0x05 - 0b00000101 - 128 bytes of ram, serial port, 2K ROM
;     0x06 - 0b00000110 - 256 bytes of ram, 0K ROM
;     0x07 - 0b00000111 - 256 bytes of ram, serial port, 2K ROM
;     0x08 - 0b00001000 - 128 bytes of ram, 4K ROM
;     0x09 - 0b00001001 - 128 bytes of ram, serial port, 4K ROM
;     0x0a - 0b00001010 - 256 bytes of ram, 4K ROM
;     0x0b - 0b00001011 - 256 bytes of ram, serial port, 4K ROM
;     0x10 - 0b00010000 - 128 bytes of ram, >4K ROM
;     0x11 - 0b00010001 - 128 bytes of ram, serial port, >4K ROM
;     0x12 - 0b00010010 - 256 bytes of ram, >4K ROM
;     0x13 - 0b00010011 - 256 bytes of ram, serial port, >4K ROM
;     Any other values are errors

;R0      .equ    0   ; AKA A Register
;R1      .equ    1   ; AKA B Register
R2      .equ    2
R3      .equ    3
R4      .equ    4
R5      .equ    5
R6      .equ    6
R7      .equ    7

; peripherals

IOCNT0  .equ    0   ; Used to control modes via the CPU
BPORT   .equ    6   ; Used to switch modes via external connection, and used for SPI interface 
SCTL1   .equ    21  ; Used to probe for a Serial Port on the 70x2
SCTL1C  .equ    24  ; Used to probe for a Serial Port on the 70Cx2

RAMDEST .equ    $0008       ; location in ram for the code to be copied into and run from
                            ; Right now, this just barely fits into 128 bytes of RAM

        .ORG    $E000       ; External Memory in the last 8K
        .FILL   $20,$E0     ; If this data is read in Full Expansion mode, then this is not a >6K internal ROM chip

        .ORG    $E800       ; External Memory in the last 6K
        .FILL   $20,$E8     ; If this data is read in Full Expansion mode, then this is not a >4K internal ROM chip

        .ORG    $F000       ; External Memory in the last 4K
        .FILL   $20,$F0     ; If this data is read in Full Expansion mode, then this is not a 4K internal ROM chip

        .ORG    $F800       ; External Memory in the last 2K
        .FILL   $20,$F8     ; If this code is read in Full Expansion mode, then this is not a 2K internal ROM chip

        ; Initialize port, stack
START:
        MOVP    %$FF,BPORT  ; PORTB = FF, PORTB=All ones (MC high, make sure external ROM enabled)
        MOV     %$0C,B      ; B  = 0C
        LDSP                ; SP = 000C - we don't use stack anyway
        MOVP    %$AA,IOCNT0 ; Disable some interrupts, set for Full Expansion mode after mode switch

        ; Try to identify this chip and store a code in R3

RAMCHK:
        ; Identify RAM size:
        ; do checks twice with different data,
        ; to protect against random luck matches

        MOV     %$55,$ff
        MOV     %$AA,$7f
        CMP     %$55,$ff    ; check for 256 bytes working
        JNZ     RAM128
        MOV     %$AA,$ff
        MOV     %$55,$7f
        CMP     %$AA,$ff    ; doublecheck for 256 bytes working
        JNZ     RAM128

RAM256:
        MOV     %$02,R3     ; 256 bytes
        JMP     SERCHK
RAM128:
        MOV     %$00,R3     ; 128 bytes
        JMP     SERCHK

        ; Try to store bottom two bits of SCTL1 register and see if they stay
        ; if so, we have a UART
        ; We try both the locations, once for the 70X2 chip, and then the 70CX2 chip

SERCHK:
        ANDP    %$FC,SCTL1  ; zero the 2 LS bits
        MOVP    SCTL1,A
        AND     %$03,A
        JNZ     SERCHKC     ; fail if not zero
        ORP     %$01,SCTL1  ; set the bottom bit
        MOVP    SCTL1,A
        AND     %$03,A 
        CMP     %$01,A      ; check if it's a one now
        JNZ     SERCHKC     ; or fail
        ORP     %$02,SCTL1  ; set the next bit
        MOVP    SCTL1,A
        AND     %$03,A 
        CMP     %$03,A      ; should be 3 now
        JZ      SERFOUND    ; if not fail

SERCHKC:
        ANDP    %$FC,SCTL1C  ; zero the 2 LS bits
        MOVP    SCTL1C,A
        AND     %$03,A
        JNZ     SERFAIL     ; fail if not zero
        ORP     %$01,SCTL1C  ; set the bottom bit
        MOVP    SCTL1C,A
        AND     %$03,A 
        CMP     %$01,A      ; check if it's a one now
        JNZ     SERFAIL     ; or fail
        ORP     %$02,SCTL1C  ; set the next bit
        MOVP    SCTL1C,A
        AND     %$03,A 
        CMP     %$03,A      ; should be 3 now
        JNZ     SERFAIL     ; if not fail
SERFOUND:
        OR      %$01,R3     ; UART detected, set this bit
SERFAIL:

        ; Copy code from External ROM to RAM

COPYCODE:
        MOVD    %RAMCODE,R5 ; Start of ROM source
        MOVD    %RAMDEST,R7 ; Start of RAM destination
CPYLOOP:
        LDA     *R5         ; grab code byte
        STA     *R7         ; move code byte
        INC     R7          ; increment destination
        ADC     %$0,R6      ; ripple carry to high byte
        INC     R5          ; increment source
        ADC     %$0,R4      ; ripple carry to high byte
        CMP     %(ENDCODE/$100),R4          ; am I at high byte of ENDCODE?
        JNZ     CPYLOOP     ; if we are not done, loop to copy next byte
        CMP     %$(ENDCODE%$100),R5         ; am I at low byte of ENDCODE?
        JNZ     CPYLOOP     ; if we are not done, loop to copy next byte

        ; We reached ENDCODE, so our code copy to RAM is done
        BR      @RAMDEST    ; jump to code in RAM

; Start of code to be executed in RAM
; (Must be relocatable)

RAMCODE:
        MOVP    %$FE,BPORT  ; PORTB = FE, PORTB.0=0 (Flip the MC pin low, internal ROM enabled)
        MOV     %$FF,B      ; B = FF
DELAY:
        DEC     B           ; B = B-1
        JNZ     DELAY       ; wait a bit for things to settle

;   determine internal ROM size

        MOVD    %$E800,R5   ; Start of 6K ROM
X1:     LDA     *R5
        CMP     R4,A        ; expected byte in R4 if reading external memory
        JNZ     NOMATCH
        INC     R5
        CMP     %$20,R5     ; done checking 32 bytes?
        JNZ     X1
        MOV     %$0,R5      ; if so, start next region, + 0x0800
        ADD     %$8,R4
        JNZ     X1          ; done with all regions?

ROM0K:
        JMP     FINISHUP

NOMATCH:
        CMP     %$E8,R4     ; >4K ROM check if match
        JNZ     NEXTCHK

ROM12K:
        OR      %$10,R3
        MOV     %$CF,R4     ; R4:R5 = D000-1, (Start of 12K Internal ROM)
        JMP     DODUMP

NEXTCHK:
        CMP     %$F0,R4     ; 4K ROM if match
        JNZ     ROM2K

ROM4K:  OR      %$08,R3
        JMP     FINISHUP
                            
ROM2K:  
        OR      %$04,R3
FINISHUP:
        DEC     R4          ;    R4:R5 = 0000-1, (End of Internal ROM)
                            ; or R4:R5 = F000-1, (Start of 4K Internal ROM)
                            ; or R4:R5 = F800-1, (Start of 2K Internal ROM)
        
DODUMP:
        MOV     %$FF,R5

        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0
        ANDP    %$F7,BPORT  ; PORTB.3 = ~SS = 0
        MOV     R3,A
        JMP     JUMPIN

NXTBYTE:
        LDA     *R5         ; Read internal ROM byte
JUMPIN:
        MOV     %$8,R2      ; R2 = 8, bit counter?
NXTBIT:
        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0

        RL      A           ; get each bit, MSB first
        JHS     DOONE       ; if 1, jump
        ANDP    %$FD,BPORT  ; PORTB.1 = MOSI = 0
        JMP     AHEAD
DOONE:
        ORP     %$02,BPORT  ; PORTB.1 = MOSI = 1
AHEAD:
        ORP     %$04,BPORT  ; PORTB.2 = SCK = 1
        DEC     R2          ; decrement bit counter
        JNZ     NXTBIT      ; do next bit

        INC     R5          ; increment for next location to read
        ADC     %$0,R4
        JNZ     NXTBYTE     ; unless we roll over to 0000, do next byte

        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0
        ORP     %$08,BPORT  ; PORTB.3 = ~SS = 1

DONE:
        JMP     DONE        ; loop forever
ENDCODE:
;       End of code to be executed in RAM

RPRGSIZE .equ   ENDCODE-RAMCODE

        ; Vectors go here

        .ORG    0FFF8H

        .MSFIRST            ; need this, or .word statements are backwards for this CPU

        .word   START
        .word   START
        .word   START
        .word   START

        .end


