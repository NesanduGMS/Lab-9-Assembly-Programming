; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; Turn off all the traffic lights.
	MOV AL,FE	; copy 1111 1110 into AL register
	OUT 02		; Send AL to Port One (The traffic lights).
			; Turn on all the traffic lights.
	MOV AL,8B	; copy 1000 1011 into AL register
	OUT 02		; Send AL to Port One (The traffic lights).
	
	END		; Program ends.
	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
