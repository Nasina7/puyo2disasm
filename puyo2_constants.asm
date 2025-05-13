NULL = 0
SystemStack = $00FF8000

Z80Ram =     $A00000
Z80BusReq =  $A11100
Z80Reset =   $A11200

padData1 = 	$A10003
padData2 = 	$A10005
padData3 = 	$A10007
padControl1 = $A10009
padControl2 = $A1000B
padControl3 = $A1000D

VdpData = $C00000
VdpCtrl = $C00004

; Joypad (bit numbers)
btn_Start = 7
btn_A = 6
btn_C = 5
btn_B = 4
btn_Right = 3
btn_Left = 2
btn_Down = 1
btn_Up = 0

; Joypad (byte values)
btnb_Start = $80
btnb_A = $40
btnb_C = $20
btnb_B = $10
btnb_Right = $8
btnb_Left = $4
btnb_Down = $2
btnb_Up = $1

; Ram Map
rlBytecode_CurLocation = $00FFA050
rbBytecode_Return = $00FFA054
rbBytecode_StopRun = $00FFA055
rbBytecode_StopLoop = $00FFA056
;A056-A05F
rwFrameCount = $00FFA060