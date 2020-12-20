;-------------------------------------------------------------------------------
;Name : Boot Loader
;Author : Taraisan
;Description : first loading
;-------------------------------------------------------------------------------
[BITS 16]
ORG 0x7C00

BOOT:
ImageName		DB "Bood-bye Small World", 0x00
MOV	SI, ImageName
CALL	DisplayMessage	

DisplayMessage:
	PUSH	AX
	PUSH	BX
StartDispMsg:
	LODSB
	OR	AL, AL
	JZ	.DONE
	MOV	AH, 0x0E
	MOV	BH, 0x00
	MOV	BL, 0x07
	INT	0x10
	JMP	StartDispMsg
.DONE:
	POP	BX
	POP	AX
	RET

TIMES 510 - ($ - $$) DB 0
DW 0xAA55
