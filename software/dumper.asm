;
; Original Code and hardware by Frank Palazzolo
; Code written and working sometime in the early 2000's
; Source Reverse-engineered from Binary(!)
; And updated for standard SPI master interface - 2022-October
; Added Chip ID functions, 2022-November
;
; This code can be built with TASM Version 3.2:
;   tasm -70 -g3 -fff -c dumper.asm dumper.bin
;
; Dumper code for:
;       PIC7020, TMS7020 - 2K bytes ROM, 128 bytes RAM
;       PIC7021          - 2K bytes ROM, 128 bytes RAM, peripherals
;       PIC7040, TMS7040 - 4K bytes ROM, 128 bytes RAM
;       PIC7041          - 4K bytes ROM, 128 bytes RAM, peripherals
;       TMS7040          - 4K bytes ROM, 256 bytes RAM
;       TMS7042          - 4K bytes ROM, 256 bytes RAM, peripherals
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
; 1) Code segment is copied from external ROM to internal RAM
; 2) Jump to code in internal RAM 
; 3) Switch modes, enabling internal ROM 
; 4) Clock out internal ROM bits on PORTB, bits 1 and 2
;       
; Program writes out 4K in all cases.  
; If chip only has 2K internal ROM, it will be in the last 2K of the data
;

;R0      .equ    0   ; AKA A Register
;R1      .equ    1   ; AKA B Register
R2      .equ    2
R3      .equ    3
R4      .equ    4
R5      .equ    5
R6      .equ    6
R7      .equ    7
R8      .equ    8
R9      .equ    9
R10     .equ    10

BPORT   .equ    6
SCTL1   .equ    21

RAMDEST .equ    $002C       ; location in ram for the code to be copied into and run from

        .ORG    $F800       ; start code in the last 2K of memory

        ; Initialize port, stack
START:
        MOVP    %$FF,BPORT  ; PORTB = FF, PORTB=All ones (MC high, make sure external ROM enabled)
        MOV     %$0C,B      ; B  = 0C
        LDSP                ; SP = 000C - we don't use stack anyway

        ; Try to identify this chip and store a code in R3

RAMCHK:
        ; Identify RAM size:
        ; do checks twice with different data,
        ; to protect against random luck matches

        MOV     %$AA,$ff
        MOV     %$55,$7f
        CMP     %$55,$7f    ; check for 128 bytes working
        JNZ     RAMFAIL
        CMP     %$AA,$ff    ; check for 256 bytes working
        JNZ     RAM128
        MOV     %$55,$ff
        MOV     %$AA,$7f
        CMP     %$AA,$7f
        JNZ     RAMFAIL     ; check for 128 bytes working
        CMP     %$55,$ff    ; check for 256 bytes working
        JZ      RAM256
RAM128:
        MOV     %$00,R3     ; 128 bytes
        JMP     SERCHK
RAM256:
        MOV     %$02,R3     ; 256 bytes
        JMP     SERCHK
RAMFAIL:
        MOV     %$80,R3     ; error in ram check

        ; Try to store bottom two bits of SCTL1 register and see if they stay
        ; if so, we have a UART
SERCHK:
        ANDP    %$FC,SCTL1  ; zero the 2 LS bits
        MOVP    SCTL1,A
        AND     %$03,A
        JNZ     SERFAIL     ; fail if not zero
        ORP     %$01,SCTL1  ; set the bottom bit
        MOVP    SCTL1,A
        AND     %$03,A 
        CMP     %$01,A      ; check if it's a one now
        JNZ     SERFAIL     ; or fail
        ORP     %$02,SCTL1  ; set the next bit
        MOVP    SCTL1,A
        AND     %$03,A 
        CMP     %$03,A      ; should be 3 now
        JNZ     SERFAIL     ; if not fail
SERFOUND:
        OR      %$01,R3     ; UART detected, set this bit
SERFAIL:

        ; Send the ID byte back via SPI

        MOV     R3,A        ; byte in A
        MOV     %$08,R2     ; 8 bits in counter

        ; Start SPI byte
        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0
        ANDP    %$F7,BPORT  ; PORTB.3 = ~SS = 0

NXTBIT1:
        ; reset SCK
        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0

        ; MSB first
        RL      A           ; get each bit, MSB first

        ; Write MOSI
        JHS     DOONE1      ; if 1, jump
        ANDP    %$FD,BPORT  ; PORTB.1 = MOSI = 0
        JMP     AHEAD1
DOONE1:
        ORP     %$02,BPORT  ; PORTB.1 = MOSI = 1
AHEAD1:

        ; set SCK
        ORP     %$04,BPORT  ; PORTB.2 = SCK = 1

        ; next bit
        DEC     R2          ; decrement bit counter
        JNZ     NXTBIT1     ; do next bit

        ; shut down SPI
        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0
        ORP     %$08,BPORT  ; PORTB.3 = ~SS = 1

        ; Copy code from External ROM to RAM

        MOVD    %RAMCODE,R5 ; R5 = F030
        MOVD    %RAMDEST,R7 ; R7 = 002C
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

        MOV     %$1,R10     ; R10 = 1, Times to do the dump

        BR      @RAMDEST    ; jump to code in RAM

; Start of code to be executed in RAM
; (Must be relocatable)

RAMCODE:
        MOVP    %$FE,BPORT  ; PORTB = FE, PORTB.0=0 (Flip the MC pin low, internal ROM enabled)
        MOV     %$FF,B      ; B = FF
DELAY:
        DEC     B           ; B = B-1
        JNZ     DELAY       ; wait a bit for things to settle
DODUMP:
        MOVD    %$F000,R5   ; R5 = F000, (Start of 4K Internal ROM)
        MOVD    %$0000,R9   ; R9 = 0000, byte counter
        ANDP    %$FB,BPORT  ; PORTB.2 = SCK = 0
        ANDP    %$F7,BPORT  ; PORTB.3 = ~SS = 0
NXTBYTE:
        LDA     *R5         ; Read internal ROM byte
        ADD     %$1,R9      ; Add 1 to byte counter
        ADC     %$0,R8      ; ripple carry to high byte of byte counter
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

        DEC     R10         ; Do it R10 times
        JNZ     DODUMP

DONE:
        JMP     DONE        ; loop forever
ENDCODE:
;       End of code to be executed in RAM

        ; Vectors go here

        .ORG    0FFF8H

        .MSFIRST            ; need this, or .word statements are backwards for this CPU

        .word   START
        .word   START
        .word   START
        .word   START

        .end


