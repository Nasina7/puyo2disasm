; ==Bad Opcode Macros==
; Puyo Puyo Tsuu has a few opcodes that use 16-bit values in 8-bit data operations.
; Replicating this behavior in most assemblers requires a macro of some kind (except for VASM)

; Original opcode was MOVE.b #$FFFF, D1
bad_moveb_d1: macro value
    dc.b    $12, $3C
    dc.w    value
    endm

; Original opcode was MOVE.b #$FFFF, $12(A1)
bad_moveb_12a1: macro value
    dc.b    $13, $7C
    dc.w    value
    dc.b    $00, $12
    endm

; Original opcode was CMPI.b #$FFFF, D1
bad_cmpib_d1: macro value
    dc.b    $0C, $01
    dc.w    value
    endm

; Original opcode was SUBI.b #$FFEF, D0
bad_subib_d0: macro value
    dc.b    $04, $00
    dc.w    value
    endm



; ==Misc Macros==

align macro amount, typePadding
	dcb.b (amount-(*&(amount-1)))&(amount-1), typePadding
	endm