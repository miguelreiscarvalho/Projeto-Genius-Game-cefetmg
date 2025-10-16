
_main:

;TesteComandos.c,1 :: 		void main() {
;TesteComandos.c,2 :: 		TRISB = 0b11110000; // RB4-RB7: entrada botões; RB0-RB3: saída LEDs
	MOVLW      240
	MOVWF      TRISB+0
;TesteComandos.c,3 :: 		PORTB = 0;
	CLRF       PORTB+0
;TesteComandos.c,5 :: 		while(1) {
L_main0:
;TesteComandos.c,7 :: 		if(PORTB.F4 == 1) PORTB.F0 = 1;
	BTFSS      PORTB+0, 4
	GOTO       L_main2
	BSF        PORTB+0, 0
	GOTO       L_main3
L_main2:
;TesteComandos.c,8 :: 		else PORTB.F0 = 0;
	BCF        PORTB+0, 0
L_main3:
;TesteComandos.c,11 :: 		if(PORTB.F5 == 1) PORTB.F1 = 1;
	BTFSS      PORTB+0, 5
	GOTO       L_main4
	BSF        PORTB+0, 1
	GOTO       L_main5
L_main4:
;TesteComandos.c,12 :: 		else PORTB.F1 = 0;
	BCF        PORTB+0, 1
L_main5:
;TesteComandos.c,15 :: 		if(PORTB.F6 == 1) PORTB.F2 = 1;
	BTFSS      PORTB+0, 6
	GOTO       L_main6
	BSF        PORTB+0, 2
	GOTO       L_main7
L_main6:
;TesteComandos.c,16 :: 		else PORTB.F2 = 0;
	BCF        PORTB+0, 2
L_main7:
;TesteComandos.c,19 :: 		if(PORTB.F7 == 1) PORTB.F3 = 1;
	BTFSS      PORTB+0, 7
	GOTO       L_main8
	BSF        PORTB+0, 3
	GOTO       L_main9
L_main8:
;TesteComandos.c,20 :: 		else PORTB.F3 = 0;
	BCF        PORTB+0, 3
L_main9:
;TesteComandos.c,21 :: 		}
	GOTO       L_main0
;TesteComandos.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
