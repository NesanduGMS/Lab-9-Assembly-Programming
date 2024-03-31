; ===== WORK OUT Factorial 5 ======================================

	CLO		; Close unwanted windows.
	MOV 	AL,4	; Copy a 4 into the AL register.
	MOV 	BL,5	; Copy a 5 into the AL register.
Start:
	MUL	BL,AL	; Multiply BL and AL and store BL.
	DEC	AL	; Subtract one from AL.
	JNZ	Start   ; Jump back to Start if AL was not Zero.
			; Take 1*2*3*4*5 into BL

; ===== Display on 7-segment displays ========================= 

	MOV	AL,FF	; 1111 1111
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,8A	; 1000 1010
	OUT	02	; Send the data in AL to Port 02

	END		; Program ends
; ===== Program Ends ===========================================
