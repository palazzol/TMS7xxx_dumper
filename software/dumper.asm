;
; Original Code and hardware by Frank Palazzolo
; Code written and working sometime in the early 2000's
; Source Reverse-engineered from Binary(!) 2022-October
;
; This code can be built with TASM Version 3.2:
;   tasm -70 -g3 -f00 -c dumper.asm dumper.bin
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
; Port B, bit 0 - Pin 3 on DIP - MC Pin is connected here, along with a 4.7k pullup 
; Port B, bit 1 - Pin 4 on DIP - DATA - Bits appear here
; Port B, bit 2 - Pin 5 on DIP - CLK  - Falling Edge happens during bit, then rises before next bit is output
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

R0      .equ    0
R2      .equ    2
R4      .equ    4
R5      .equ    5
R6      .equ    6
R7      .equ    7
R8      .equ    8
R9      .equ    9
R10     .equ    10

BPORT   .equ    6

RAMDEST .equ    $002C       ; location in ram for the code to be copied into and run from

        .ORG    $E000       ; building 8K image for original 8K battery-backed SRAM design
        .BYTE   00          ; need this, or we don't get an 8K image

        .ORG    $F000

        ; Initialize port, stack
START:
        MOVP    %$FF,BPORT  ; PORTB = FF, PORTB.0=1 (MC high, make sure external ROM enabled)
        MOV     %$0C,B      ; B  = 0C
        LDSP                ; SP = 000C - we don't use stack anyway

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
        CMP     %$F0,R4     ; am I at high byte of ENDCODE?
        JNZ     CPYLOOP     ; if we are not done, loop to copy next byte
        CMP     %$83,R5     ; am I at low byte of ENDCODE?
        JNZ     CPYLOOP     ; if we are not done, loop to copy next byte

        ; We reached ENDCODE, so our code copy to RAM is done

        MOVD    %$F100,R7   ; R7 = F100, location to try to write total number of bytes to
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
        MOVD    %$F000,R5   ; R5 = F000, (Start of Internal ROM)
        MOVD    %$0000,R9   ; R9 = 0000, byte counter
NXTBYTE:
        LDA     *R5         ; Read internal ROM byte
        ADD     R0,R9       ; Add 1 to byte counter
        ADC     %$0,R8      ; ripple carry to high byte of byte counter
        MOV     %$8,R2      ; R2 = 8, bit counter?
NXTBIT:
        RR      A           ; get each bit, LSB first
        JHS     DOONE       ; if 1, jump
        ANDP    %$FD,BPORT  ; PORTB.1 = 0
        JMP     AHEAD
DOONE:
        ORP     %$02,BPORT  ; PORTB.1 = 1
AHEAD:

        MOV     %$10,B      ; small delay
SDELAY:
        DEC     B
        JNZ     SDELAY

        ANDP    %$FB,BPORT  ; PORTB.2 = 0

        MOV     %$10,B      ; small delay
SDELAY1:
        DEC     B
        JNZ     SDELAY1

        ORP     %$04,BPORT  ; PORTB.2 = 1
        DEC     R2          ; decrement bit counter
        JNZ     NXTBIT      ; do next bit
        INC     R5          ; increment for next location to read
        ADC     %$0,R4
        JNZ     NXTBYTE     ; unless we roll over to 0000, do next byte

        ; Try to write the total number of bytes read (2 bytes) on this pass
        ; starting at F100, but this doesn't work because we are still in internal ROM mode
        ; (those addresses are ROM)

        MOV     R8,A
        STA     *R7
        INC     R7
        MOV     R9,A
        STA     *R7
        INC     R7

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


