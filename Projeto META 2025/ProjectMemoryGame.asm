
_main:

;ProjectMemoryGame.c,18 :: 		void main() {
;ProjectMemoryGame.c,19 :: 		TRISB = 0b11110000;
	MOVLW      240
	MOVWF      TRISB+0
;ProjectMemoryGame.c,20 :: 		TRISA = 0b00000010;
	MOVLW      2
	MOVWF      TRISA+0
;ProjectMemoryGame.c,22 :: 		PORTB = 0;
	CLRF       PORTB+0
;ProjectMemoryGame.c,23 :: 		PORTA = 0;
	CLRF       PORTA+0
;ProjectMemoryGame.c,25 :: 		while(1)
L_main0:
;ProjectMemoryGame.c,28 :: 		if (apresent == 0){
	MOVLW      0
	XORWF      _apresent+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      0
	XORWF      _apresent+0, 0
L__main18:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;ProjectMemoryGame.c,30 :: 		apresent = 1;
	MOVLW      1
	MOVWF      _apresent+0
	MOVLW      0
	MOVWF      _apresent+1
;ProjectMemoryGame.c,32 :: 		for (i = 0; i < 3; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main3:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      3
	SUBWF      _i+0, 0
L__main19:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;ProjectMemoryGame.c,34 :: 		led_red = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,35 :: 		led_yellow = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,36 :: 		led_green = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,37 :: 		led_blue = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,39 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;ProjectMemoryGame.c,41 :: 		led_red = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,42 :: 		led_yellow = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,43 :: 		led_green = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,44 :: 		led_blue = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,45 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;ProjectMemoryGame.c,32 :: 		for (i = 0; i < 3; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,47 :: 		}
	GOTO       L_main3
L_main4:
;ProjectMemoryGame.c,49 :: 		for (i = 0; i < 5; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main8:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVLW      5
	SUBWF      _i+0, 0
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;ProjectMemoryGame.c,51 :: 		led_red = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,52 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;ProjectMemoryGame.c,54 :: 		led_red = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,55 :: 		led_blue = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,56 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;ProjectMemoryGame.c,58 :: 		led_blue = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,59 :: 		led_yellow = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,60 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;ProjectMemoryGame.c,62 :: 		led_yellow = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,63 :: 		led_green = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,64 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;ProjectMemoryGame.c,66 :: 		led_green = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,49 :: 		for (i = 0; i < 5; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,68 :: 		}
	GOTO       L_main8
L_main9:
;ProjectMemoryGame.c,70 :: 		led_red = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,71 :: 		led_yellow = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,72 :: 		led_green = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,73 :: 		led_blue = 1; // Comando em Hexadecimal
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,75 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;ProjectMemoryGame.c,77 :: 		led_red = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,78 :: 		led_yellow = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,79 :: 		led_green = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,80 :: 		led_blue = 0; // Comando em Hexadecimal
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,82 :: 		delay_ms(4000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
;ProjectMemoryGame.c,85 :: 		}
L_main2:
;ProjectMemoryGame.c,90 :: 		} // fim do while
	GOTO       L_main0
;ProjectMemoryGame.c,91 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
