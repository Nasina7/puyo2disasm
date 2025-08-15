BSTOP: macro
	dc.w    $0000
	endm

BNOP: macro
	dc.w    $0001
	endm
	
BDELAY: macro frames
	dc.w    $0002
	dc.w    frames
	endm

BUNK1: macro dat
	dc.w    $0003
	endm

BRAMW: macro location, value
	dc.w    $0004
	dc.l    location
	dc.w    value
	endm

BRUN: macro func
	dc.w    $0005
	dc.l    func
	endm
	
BJMP: macro loc
	dc.w    $0006
	dc.l    loc
	endm
	
BJEQ: macro loc
	dc.w    $0007
	dc.l    loc
	endm
	
BJNE: macro loc
	dc.w    $0008
	dc.l    loc
	endm
	
BJTBL: macro lookupSize
	dc.w    $0009
	dc.w    lookupSize
	endm
	
; TODO: Make Constants for the mode part of this macro
BVMODE: macro mode
	dc.w    $000A
	dc.w    mode
	endm
	
BUNK2: macro ptr
	dc.w 	$000B
	dc.l    ptr
	endm

BUNK3: macro
	dc.w 	$000C
    endm

BUNK4: macro ptr
	dc.w 	$000D
	dc.l    ptr
	endm

BUNK5: macro dat
	dc.w    $000E
	dc.w    dat
	endm

; BUNK6 and BUNK7 do the exact same thing?
BUNK6: macro dat
	dc.w    $000F
	dc.w    dat
	endm

BUNK7: macro dat
	dc.w    $0010
	dc.w    dat
	endm

BUNK8: macro dat
	dc.w    $0011
	endm

BUNK9: macro dat
	dc.w    $0012
	endm

BUNKA: macro dat
	dc.w    $0013
	dc.w    dat
	endm

BRAML: macro location, value
	dc.w    $0014
	dc.l    location
	dc.l    value
	endm

BRAMB: macro location, value
	dc.w    $0015
	dc.l    location
	dc.b    value, $00
	endm

BUNKB: macro dat
	dc.w    $0016
	endm

BJREQ: macro ptr, val, func
	dc.w	$0017
	dc.l 	ptr
	dc.b 	val, $00
	dc.l	func
    endm

BJRNE: macro ptr, val, func
	dc.w	$0018
	dc.l 	ptr
	dc.b 	val, $00
	dc.l	func
    endm
