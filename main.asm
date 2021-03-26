/*******************************************************************
	
	Autor: Javier Plaza Sisqués

********************************************************************/	

SER R16																;Inicializamos R16 con todo unos
OUT DDRD, R16														;Establecemos todos los pines del puerto D como salida

main:
	CLR R16															;Guardamos todo ceros en R16
	OUT PORTD, R16													;Sacamos por los puertos el valor de R16
	CALL delay_100													;Llamamos a la función delay de 100ms
	bucle:
		LSL R16														;Hacemos un desplazamiento hacia la izquierda de R16
		INC R16														;Incrementamos R16 en 1
		OUT PORTD, R16												;Sacamos por los puertos D el valor de R16
		CALL delay_100												;Llamamos a la función delay de 100ms
		CPI R16, 255												;Comparamos si R16 es igual a 255
		BRNE bucle													;Si lo anterior no es igual saltamos a la etiqueta bucle

	OUT PORTD, R16													;Sacamos por los puertos D el valor de R16
	CALL delay_1													;Llamamos a la función delay de 1 segundo
	RJMP main														;Hacemos un salto relativo a la etiqueta main

	



/*******************************************************************
	
	Funciones

********************************************************************/

delay_100:

	PUSH R20														;Copia de seguridad del registro 20
	PUSH R21														;Copia de seguridad del registro 21
	PUSH R22														;Copia de seguridad del registro 22

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
	
	POP R22															;Restauración del registro 22
	POP R21															;Restauración del registro 21
	POP R20															;Restauración del registro 20
	RET																;RET es el equivalente al return, antes deberemos de haber guardado el PC (Program Counter)	

delay_1:
	PUSH R20														;Copia de seguridad del registro 20
	PUSH R21														;Copia de seguridad del registro 21
	PUSH R22														;Copia de seguridad del registro 22

	
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


	POP R22															;Restauración del registro 22
	POP R21															;Restauración del registro 21
	POP R20															;Restauración del registro 20
	RET																;RET es el equivalente al return, antes deberemos de haber guardado el PC (Program Counter)	
