/*******************************************************************
	
	Autor: Javier Plaza Sisqués

********************************************************************/	

SER R16
OUT DDRD, R16

main:
	CLR R16
	OUT PORTD, R16
	CALL delay_100
	bucle:
		LSL R16
		INC R16
		OUT PORTD, R16
		CALL delay_100
		CPI R16, 255
		BRNE bucle

	OUT PORTD, R16
	CALL delay_1
	RJMP main

	



/*******************************************************************
	
	Funciones

********************************************************************/

delay_100:

	PUSH R20									;Copia de seguridad del registro 20
	PUSH R21									;Copia de seguridad del registro 21
	PUSH R22									;Copia de seguridad del registro 22

	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 1 600 000 cycles
	; 100ms at 16 MHz

		ldi  r20, 9
		ldi  r21, 30
		ldi  r22, 229
	L1: dec  r22
		brne L1
		dec  r21
		brne L1
		dec  r20
		brne L1
		nop
	
	POP R22										;Restauración del registro 22
	POP R21										;Restauración del registro 21
	POP R20										;Restauración del registro 20
	RET											;RET es el equivalente al return, antes deberemos de haber guardado el PC (Program Counter)	

delay_1:
	PUSH R20									;Copia de seguridad del registro 20
	PUSH R21									;Copia de seguridad del registro 21
	PUSH R22									;Copia de seguridad del registro 22

	
	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 16 000 000 cycles
	; 1s at 16 MHz

	ldi  r20, 82
	ldi  r21, 43
	ldi  r22, 0
	L2: 
		dec  r22
		brne L2
		dec  r21
		brne L2
		dec  r20
		brne L2
		lpm
		nop


	POP R22										;Restauración del registro 22
	POP R21										;Restauración del registro 21
	POP R20										;Restauración del registro 20
	RET											;RET es el equivalente al return, antes deberemos de haber guardado el PC (Program Counter)	
