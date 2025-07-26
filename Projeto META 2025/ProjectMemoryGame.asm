
_main:

;ProjectMemoryGame.c,19 :: 		void main() {
;ProjectMemoryGame.c,20 :: 		TRISB = 0b11110000;
	MOVLW      240
	MOVWF      TRISB+0
;ProjectMemoryGame.c,21 :: 		TRISA = 0b00000010;
	MOVLW      2
	MOVWF      TRISA+0
;ProjectMemoryGame.c,23 :: 		PORTB = 0;
	CLRF       PORTB+0
;ProjectMemoryGame.c,24 :: 		PORTA = 0;
	CLRF       PORTA+0
;ProjectMemoryGame.c,26 :: 		Sound_Init(&PORTA, 0);
	MOVLW      PORTA+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;ProjectMemoryGame.c,30 :: 		while(1)
L_main0:
;ProjectMemoryGame.c,33 :: 		if (apresent == 0){
	MOVLW      0
	XORWF      _apresent+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      0
	XORWF      _apresent+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;ProjectMemoryGame.c,35 :: 		apresent = 1;
	MOVLW      1
	MOVWF      _apresent+0
	MOVLW      0
	MOVWF      _apresent+1
;ProjectMemoryGame.c,36 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;ProjectMemoryGame.c,40 :: 		led_red = 1; led_yellow = 1; led_green = 0; led_blue = 0;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,41 :: 		Sound_Play(132, 300);
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,42 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;ProjectMemoryGame.c,44 :: 		led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,45 :: 		Sound_Play(70, 300);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,46 :: 		delay_ms(1200);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;ProjectMemoryGame.c,48 :: 		led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,49 :: 		Sound_Play(180, 300);
	MOVLW      180
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,50 :: 		delay_ms(1400);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      27
	MOVWF      R12+0
	MOVLW      39
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;ProjectMemoryGame.c,51 :: 		led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,53 :: 		delay_ms(450);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      73
	MOVWF      R12+0
	MOVLW      102
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;ProjectMemoryGame.c,56 :: 		for (i = 0; i < 5; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main8:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      5
	SUBWF      _i+0, 0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;ProjectMemoryGame.c,59 :: 		led_red = 1;
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,60 :: 		Sound_Play(41, 200);
	MOVLW      41
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      200
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,62 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;ProjectMemoryGame.c,64 :: 		Sound_Play(0, 0);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	CLRF       FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,66 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;ProjectMemoryGame.c,68 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,69 :: 		led_blue = 1;
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,70 :: 		Sound_Play(85, 200);
	MOVLW      85
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      200
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,72 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
;ProjectMemoryGame.c,74 :: 		Sound_Play(0, 0);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	CLRF       FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,76 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
;ProjectMemoryGame.c,78 :: 		led_blue = 0;
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,79 :: 		led_yellow = 1;
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,80 :: 		Sound_Play(116, 200);
	MOVLW      116
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      200
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,82 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
;ProjectMemoryGame.c,84 :: 		Sound_Play(0, 0);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	CLRF       FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,86 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;ProjectMemoryGame.c,88 :: 		led_yellow = 0;
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,89 :: 		led_green = 1;
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,90 :: 		Sound_Play(182, 300);
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,92 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
;ProjectMemoryGame.c,94 :: 		Sound_Play(0, 0);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	CLRF       FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,96 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;ProjectMemoryGame.c,98 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,56 :: 		for (i = 0; i < 5; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,100 :: 		}
	GOTO       L_main8
L_main9:
;ProjectMemoryGame.c,102 :: 		for (i = 0; i < 6; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main19:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      6
	SUBWF      _i+0, 0
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
;ProjectMemoryGame.c,105 :: 		led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,106 :: 		Sound_Play(70, 300);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,108 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	NOP
	NOP
;ProjectMemoryGame.c,110 :: 		led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,112 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
;ProjectMemoryGame.c,102 :: 		for (i = 0; i < 6; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,116 :: 		}
	GOTO       L_main19
L_main20:
;ProjectMemoryGame.c,121 :: 		}
L_main2:
;ProjectMemoryGame.c,126 :: 		} // fim do while
	GOTO       L_main0
;ProjectMemoryGame.c,127 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
