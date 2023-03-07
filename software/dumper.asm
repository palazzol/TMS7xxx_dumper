;
; Original Code and hardware by Frank Palazzolo
; Code written and working sometime in the early 2000's
; Source Reverse-engineered from Binary(!)
; And updated for standard SPI master interface - 2022-October
; Added Chip ID functions, 2022-November
; Switched to Memory-Mapped I/O, added support for CT and Piggyback chips - 2022-December
;
; This code can be built with TASM Version 3.2:
;   tasm -70 -g3 -s dumper.asm dumper.bin
;
; Dumper code for all TMS7000 series parts
;
; Hardware connections:
;
; ~INT1 and ~INT3 wired to +5 - pins 13 and 12 on DIP
; Arduino can be written to by writing to any external memory address (code uses 0x1000)
; MC set to Vcc on startup by Arduino
; First write of 0x55 signals Arduino to flip MC from high to low
; Second write to Arduino is the ChipID byte
; Subsequent writes are dumps of Internal ROM
;   (length is dependant on the ChipID byte)
;
; When External Memory is enabled:
;
; Port B, bit 4 - Pin 38 on DIP - ALATCH
; Port B, bit 5 - Pin 1 on DIP  - R/~W 
; Port B, bit 6 - Pin 39 on DIP - ~ENABLE
; Port B, bit 7 - Pin 2 on DIP  - CLKOUT 
; Port C, all   - Address Low / Data Bus
; Port D, all*  - Address High Bus
; NOTE: Since the CT chips only have the upper 4 bits of Port D,
; We have mapped external memory such that every 4K block of TMS7000 space
; contains 16 copies of a single 256 byte block of the ROM chip
;
; Chip starts up in Microprocessor mode, executing ROM from external memory
; 1) Boots to 0x1000 - Code checks ram size and for presence of serial port, to generate initial ID byte
; 2) Trojan Code segment is copied from external ROM to internal RAM
; 3) Jump to code in internal RAM 
; 4) RAM-resident code sends Arduino a 0x55 to switch modes, enabling internal ROM
; 5) Jump back to external ROM
; 6) Code determines internal ROM size and adjusts ID byte
; 7) Code writes out bytes to Arduino:
;    ID byte, followed by internal ROM bytes

; RAM Layout
; 0x00-0x07 - A,B,R2-R7 Used as general purpose storage
; 0x08-0x18 - Reserved for Trojan program
; 0x19-0x7E - Spare
; 0x7F      - used to determine RAM size

; ID Byte bit definition:
;
; bit 0:    0 = No Serial Port, 1 = Serial Port detected
; bit 1:    0 = 128 bytes of RAM, 1 = 256 bytes of RAM
; bits 2-5: number of 2K blocks of Internal ROM present (0-8) = (0K-16K)
; bits 6-7: unused

;R0      .equ    0   ; AKA A Register
;R1      .equ    1   ; AKA B Register

R2      .equ    2   ; Used as a Counter variable
R3      .equ    3   ; Used for ID byte
R4      .equ    4   ; R4:R5 used as primary 2-byte Memory Index
R5      .equ    5
R6      .equ    6   ; R6:R7 used as secondary 2-byte Memory Index
R7      .equ    7

; peripherals

IOCNT0  .equ    0       ; Peripheral address to control CPU modes
ARDADDR .equ    $1000   ; Address to write a byte to the Arduino
SCTL1   .equ    21      ; Peripheral address to probe for a Serial Port on the 70x2
SCTL1C  .equ    24      ; Peripheral address to probe for a Serial Port on the 70Cx2
FDDR    .equ    $1F     ; Peripheral address to probe for Port F

RAMDEST .equ    $0008       ; location in ram for the code to be copied into and run from

; Binary image Layout:
; We fill 64K of space with this program, but we only use 4K of it in the ROM
; Each 4K block contains only 256 bytes of info

; 0x0X00 is unused.  The first 256 bytes will appear in the ROM

        .ORG    $0000       ; nothing here, fill with zeros
        .FILL   $100,$00

; 0x1X00 contains the code block.  Only 256 bytes are available.

        .ORG    $1000

        ; Initialize port, stack
START:
        MOV     %$0C,B      ; B  = 0C
        LDSP                ; SP = 000C - we don't use stack anyway
        MOVP    %$AA,IOCNT0 ; Disable some interrupts, set for Full Expansion mode after mode switch

        ; Try to identify this chip and store a code in R3
        MOV     %$00,R3     ; Initialize ID byte to 0, (128 bytes of RAM)

RAMCHK:
        ; Identify RAM size:
        ; do checks twice with different data,
        ; to protect against random luck matches

        MOV     %$55,$ff
        MOV     %$AA,$7f
        CMP     %$55,$ff    ; check for 256 bytes working
        JNZ     SERCHK      ; if fail, 128 bytes - jump to next step
        MOV     %$AA,$ff
        MOV     %$55,$7f
        CMP     %$AA,$ff    ; doublecheck for 256 bytes working
        JNZ     SERCHK      ; if fail, 128 bytes - jump to next step

RAM256:
        MOV     %$02,R3     ; We have 256 bytes or RAM

        ; Try to store bottom two bits of SCTL1 register and see if they "stay"
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
        JNZ     CHKPORT      ; fail if not zero
        ORP     %$01,SCTL1C  ; set the bottom bit
        MOVP    SCTL1C,A
        AND     %$03,A 
        CMP     %$01,A       ; check if it's a one now
        JNZ     CHKPORT      ; or fail
        ORP     %$02,SCTL1C  ; set the next bit
        MOVP    SCTL1C,A
        AND     %$03,A 
        CMP     %$03,A       ; should be 3 now
        JNZ     CHKPORT      ; if not fail
SERFOUND:
        OR      %$01,R3      ; UART detected, set this bit

CHKPORT:
        ANDP    %$00,FDDR
        MOVP    FDDR,A
        JNZ     COPYCODE
        ORP     %$FF,FDDR
        MOVP    FDDR,A
        CMP     %$FF,A
        JNZ     COPYCODE
        OR      %$40,R3      ; Set bit 6 if this port exists

        ; Copy code from External ROM to RAM

COPYCODE:
        MOV     %$10,R2     ; Byte Counter - our code is < 16 bytes
        MOVD    %RAMCODE,R5 ; Start of ROM source
        MOVD    %RAMDEST,R7 ; Start of RAM destination
CPYLOOP:
        LDA     *R5         ; grab code byte
        STA     *R7         ; move code byte
        INC     R7          ; increment destination
        ADC     %$0,R6      ; ripple carry to high byte
        INC     R5          ; increment source
        ADC     %$0,R4      ; ripple carry to high byte
        DEC     R2          ; done yet?
        JNZ     CPYLOOP     ; if we are not done, loop to copy next byte
        ; our code copy to RAM is done
        BR      @RAMDEST    ; jump to code in RAM

; Start of code to be executed in RAM
; (Must be relocatable)

RAMCODE:
        MOV     %$55,A      ; Byte signifying request to switch modes
        STA     @ARDADDR    ; switch modes
        MOV     %$FF,B      ; B = FF
DELAY:
        DEC     B           ; B = B-1
        JNZ     DELAY       ; wait a bit for things to settle
        BR      @BACK2ROM

;   Determine internal ROM size

BACK2ROM:
        MOV     %$08,R2     ; Number of 2K pages
        MOVD    %$C000,R5   ; Start of 16K ROM
CHKNXT: LDA     *R5
        MOV     R4,B        ; expected byte might have a bit 3 set, but we need to reset it
        AND     %$F7,B      ; before comparing to the byte read from ROM
        CMP     B,A         ; expected byte in B if reading external memory
        JNZ     FINISHUP
        INC     R5
        CMP     %$20,R5     ; done checking 32 bytes?
        JNZ     CHKNXT
        MOV     %$0,R5      ; if so, start next 2K region, + 0x0800
        DEC     R2          ; but first, subtract 1 from num of 2K regions
        ADD     %$8,R4
        JNZ     CHKNXT      ; done with all regions?

FINISHUP:
        ; Update R3 with # of 2K pages from R2
        CLRC                ; put 2K page counter into bits 2,3,4,5
        RL      R2
        RL      R2
        ADD     R2,R3       ; add to ID byte in the right place

        ; at this point:
        ;   R3 is the complete ID byte
        ;   R4 is the high byte of the start of internal rom to dump 
        ;     (or 00)
        MOV     %$00,R5     ; now R4:R5 is the start of internal ROM (or 0000)

SENDID:
        MOV     R3,A
        STA     @ARDADDR    ; send ID byte to the arduino

        CMP     %$00,R4     ; check if no internal rom
        JZ      DONE

NXTBYTE:
        LDA     *R5         ; Read internal ROM byte
        STA     @ARDADDR    ; send a byte to the arduino

        INC     R5          ; increment for next location to read
        ADC     %$0,R4
        JNZ     NXTBYTE     ; unless we roll over to 0000, do next byte

DONE:
        JMP     DONE        ; loop forever

        .FILL   $1100-$, $FF    ; Fill the rest of this 256 byte region

        ; Now, create empty 256-byte regions for 4K pages $2000-$B000

        .ORG    $2000
        .FILL   $100,$FF

        .ORG    $3000
        .FILL   $100,$FF

        .ORG    $4000
        .FILL   $100,$FF

        .ORG    $5000
        .FILL   $100,$FF

        .ORG    $6000
        .FILL   $100,$FF

        .ORG    $7000
        .FILL   $100,$FF

        .ORG    $8000
        .FILL   $100,$FF

        .ORG    $9000
        .FILL   $100,$FF

        .ORG    $A000
        .FILL   $100,$FF

        .ORG    $B000
        .FILL   $100,$FF

; We fill the first 32 bytes of each of the last 4K regions with the high byte of the region
; (This shows up as the first 32 bytes in every 256 byte block of this region)
; We try to read them at the start of each 2K block, to determine if we are reading external or internal ROM
; In this way, we determine how much internal ROM there is

        .ORG    $C000       ; External Memory in the last 16K
        .FILL   $20,$C0     ; If this data is read in Full Expansion mode at $C000, then this is not a 16K internal ROM chip
                            ; If this data is read in Full Expansion mode at $C800, then this is not a 14K internal ROM chip
        .FILL   $C100-$,$FF ; Fill the rest of this 256-byte block


        .ORG    $D000       ; External Memory in the last 12K
        .FILL   $20,$D0     ; If this data is read in Full Expansion mode at $D000, then this is not a 12K internal ROM chip
                            ; If this data is read in Full Expansion mode at $D800, then this is not a 10K internal ROM chip
        .FILL   $D100-$,$FF ; Fill the rest of this 256-byte block

        .ORG    $E000       ; External Memory in the last 8K
        .FILL   $20,$E0     ; If this data is read in Full Expansion mode at $E000, then this is not a 8K internal ROM chip
                            ; If this data is read in Full Expansion mode at $E800, then this is not a 6K internal ROM chip
        .FILL   $E100-$,$FF ; Fill the rest of this 256-byte block

        .ORG    $FF00       ; External Memory in the last 4K
        .FILL   $20,$F0     ; If this data is read in Full Expansion mode at $F000, then this is not a 4K internal ROM chip
                            ; If this data is read in Full Expansion mode at $F800, then this is not a 2K internal ROM chip
        .FILL   $FFF4-$,$FF ; Fill the gap up to the Vectors in this 256-byte block

        ; Vectors go here

        .ORG    $FFF4

        .MSFIRST            ; need this, or .word statements are backwards for this CPU!

        .word   START       ;  INT5 vector
        .word   START       ;  INT4 vector
        .word   START       ; ~INT3 vector
        .word   START       ;  INT2 vector
        .word   START       ; ~INT1 vector
        .word   START       ; ~RESET vector

        .end


