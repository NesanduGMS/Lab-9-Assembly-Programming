; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; Turn off all the traffic lights.
	MOV AL,84	; Copy 10000100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on red light on left and green on right.

	MOV	AL,A	; A delay of 10 cpu cycles.
	CALL	30	; Call the procedure at address [30]

	MOV AL,48	; Copy 01001000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV	AL,1	; A delay of 1 cpu cycles.
	CALL	30	; Call the procedure at address [30]

	MOV	AL,30	; Copy 00110000 into the AL register.
	OUT	01	; Send AL to Port One (The traffic lights).

	MOV	AL,5	; A delay of 5 cpu cycles.
	CALL	30	; Call the procedure at address [30]

	JMP Start	; Jump back to the start.
	
; ----- Time Delay Procedure Stored At Address [30] -------------
	ORG	30	; Generate machine code from address [30]

	PUSH	AL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	AL	; Subtract one from AL.
	JNZ	REP	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	AL	; Restore AL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------
	
; ===== Program Ends ==========================================
 
