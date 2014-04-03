;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:			Brandon Stanley
; Student Number:	0495470
; Course:		CS2476
; Assignment:		Combining C and Asm
; Date Created:		March 24, 2014
; Last Modified:	March 24, 2014
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose:
;	To use call assembly code using C code to produce an effect.
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Notes:
; 
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
section .data
 
 
section .text
        global modding_function

modding_function:
	MOV	eax,	[esp+4]
	AND	eax,	0xFFFF ;mask all but final 16 bits
	
	;reverse EAX
	MOV	ecx,	0
	MOV	ebx,	0
reverse_loop:
	SHR	ax,	1
	JNC	not_one
	ADD	bx,	1 ;carry was generated by shift
not_one:	;no carry generated
	INC	ecx ;check if there's more bits to deal with
	CMP	ecx,	16
	JZ	exit_mask
	SHL	bx,	1 ;there's at least one more bit coming, so shift bits
	JMP	reverse_loop
exit_mask:
	MOV	EAX,	EBX
	RET





