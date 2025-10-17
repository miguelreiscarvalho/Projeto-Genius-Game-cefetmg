
_reseta_variavel:

;ProjectMemoryGame.c,22 :: 		void reseta_variavel() {
;ProjectMemoryGame.c,23 :: 		step = 0; jogada = 0; situacao = 1;
	CLRF       _step+0
	CLRF       _step+1
	CLRF       _jogada+0
	CLRF       _jogada+1
	MOVLW      1
	MOVWF      _situacao+0
	MOVLW      0
	MOVWF      _situacao+1
;ProjectMemoryGame.c,24 :: 		press_button = 0; espera = 0;
	CLRF       _press_button+0
	CLRF       _press_button+1
	CLRF       _espera+0
	CLRF       _espera+1
;ProjectMemoryGame.c,25 :: 		}
L_end_reseta_variavel:
	RETURN
; end of _reseta_variavel

_apresentacao:

;ProjectMemoryGame.c,28 :: 		void apresentacao() {
;ProjectMemoryGame.c,29 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_apresentacao0:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao0
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao0
	NOP
	NOP
;ProjectMemoryGame.c,31 :: 		led_red = 1; led_yellow = 1; led_green = 0; led_blue = 0;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,32 :: 		Sound_Play(930, 140); delay_ms(140);
	MOVLW      162
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      140
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      2
	MOVWF      R11+0
	MOVLW      108
	MOVWF      R12+0
	MOVLW      159
	MOVWF      R13+0
L_apresentacao1:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao1
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao1
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao1
	NOP
	NOP
;ProjectMemoryGame.c,34 :: 		led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,35 :: 		Sound_Play(775, 180); delay_ms(180);
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      180
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      2
	MOVWF      R11+0
	MOVLW      212
	MOVWF      R12+0
	MOVLW      133
	MOVWF      R13+0
L_apresentacao2:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao2
;ProjectMemoryGame.c,37 :: 		led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,38 :: 		Sound_Play(1050, 200); delay_ms(200);
	MOVLW      26
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      200
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_apresentacao3:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao3
;ProjectMemoryGame.c,40 :: 		led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,41 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_apresentacao4:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao4
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao4
	NOP
	NOP
;ProjectMemoryGame.c,43 :: 		for (i = 0; i < 5; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_apresentacao5:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__apresentacao82
	MOVLW      5
	SUBWF      _i+0, 0
L__apresentacao82:
	BTFSC      STATUS+0, 0
	GOTO       L_apresentacao6
;ProjectMemoryGame.c,44 :: 		led_red = 1; led_green = 0;
	BSF        PORTB+0, 0
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,45 :: 		Sound_Play(703, 35); delay_ms(35);
	MOVLW      191
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      35
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      91
	MOVWF      R12+0
	MOVLW      231
	MOVWF      R13+0
L_apresentacao8:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao8
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao8
	NOP
	NOP
;ProjectMemoryGame.c,47 :: 		led_red = 0; led_blue = 1;
	BCF        PORTB+0, 0
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,48 :: 		Sound_Play(812, 35); delay_ms(35);
	MOVLW      44
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      35
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      91
	MOVWF      R12+0
	MOVLW      231
	MOVWF      R13+0
L_apresentacao9:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao9
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao9
	NOP
	NOP
;ProjectMemoryGame.c,50 :: 		led_blue = 0; led_yellow = 1;
	BCF        PORTB+0, 3
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,51 :: 		Sound_Play(890, 35); delay_ms(35);
	MOVLW      122
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      35
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      91
	MOVWF      R12+0
	MOVLW      231
	MOVWF      R13+0
L_apresentacao10:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao10
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao10
	NOP
	NOP
;ProjectMemoryGame.c,53 :: 		led_yellow = 0; led_green = 1;
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,54 :: 		Sound_Play(1055, 35); delay_ms(35);
	MOVLW      31
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      35
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      91
	MOVWF      R12+0
	MOVLW      231
	MOVWF      R13+0
L_apresentacao11:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao11
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao11
	NOP
	NOP
;ProjectMemoryGame.c,43 :: 		for (i = 0; i < 5; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,55 :: 		}
	GOTO       L_apresentacao5
L_apresentacao6:
;ProjectMemoryGame.c,57 :: 		for (i = 0; i < 6; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_apresentacao12:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__apresentacao83
	MOVLW      6
	SUBWF      _i+0, 0
L__apresentacao83:
	BTFSC      STATUS+0, 0
	GOTO       L_apresentacao13
;ProjectMemoryGame.c,58 :: 		led_red = led_yellow = led_green = led_blue = 1;
	BSF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__apresentacao84
	BCF        PORTB+0, 2
	GOTO       L__apresentacao85
L__apresentacao84:
	BSF        PORTB+0, 2
L__apresentacao85:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao86
	BCF        PORTB+0, 1
	GOTO       L__apresentacao87
L__apresentacao86:
	BSF        PORTB+0, 1
L__apresentacao87:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao88
	BCF        PORTB+0, 0
	GOTO       L__apresentacao89
L__apresentacao88:
	BSF        PORTB+0, 0
L__apresentacao89:
;ProjectMemoryGame.c,59 :: 		Sound_Play(775, 80); delay_ms(20);
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_apresentacao15:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao15
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao15
	NOP
	NOP
;ProjectMemoryGame.c,60 :: 		led_red = led_yellow = led_green = led_blue = 0;
	BCF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__apresentacao90
	BCF        PORTB+0, 2
	GOTO       L__apresentacao91
L__apresentacao90:
	BSF        PORTB+0, 2
L__apresentacao91:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao92
	BCF        PORTB+0, 1
	GOTO       L__apresentacao93
L__apresentacao92:
	BSF        PORTB+0, 1
L__apresentacao93:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao94
	BCF        PORTB+0, 0
	GOTO       L__apresentacao95
L__apresentacao94:
	BSF        PORTB+0, 0
L__apresentacao95:
;ProjectMemoryGame.c,61 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_apresentacao16:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao16
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao16
;ProjectMemoryGame.c,57 :: 		for (i = 0; i < 6; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ProjectMemoryGame.c,62 :: 		}
	GOTO       L_apresentacao12
L_apresentacao13:
;ProjectMemoryGame.c,63 :: 		}
L_end_apresentacao:
	RETURN
; end of _apresentacao

_partida:

;ProjectMemoryGame.c,70 :: 		void partida() {
;ProjectMemoryGame.c,71 :: 		while(step < partidas && situacao) {
L_partida17:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _partidas+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida97
	MOVF       _partidas+0, 0
	SUBWF      _step+0, 0
L__partida97:
	BTFSC      STATUS+0, 0
	GOTO       L_partida18
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida18
L__partida79:
;ProjectMemoryGame.c,72 :: 		sequencia[step] = rand() % 4;
	MOVF       _step+0, 0
	MOVWF      R0+0
	MOVF       _step+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FLOC__partida+0
	CALL       _rand+0
	MOVLW      4
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       FLOC__partida+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;ProjectMemoryGame.c,75 :: 		for(j = 0; j <= step; j++) {
	CLRF       _j+0
L_partida21:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida98
	MOVF       _j+0, 0
	SUBWF      _step+0, 0
L__partida98:
	BTFSS      STATUS+0, 0
	GOTO       L_partida22
;ProjectMemoryGame.c,76 :: 		switch(sequencia[j]) {
	MOVF       _j+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FLOC__partida+0
	GOTO       L_partida24
;ProjectMemoryGame.c,77 :: 		case 0: led_red = 1;    Sound_Play(1055, 80);  break; // 182 * 2.5
L_partida26:
	BSF        PORTB+0, 0
	MOVLW      31
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,78 :: 		case 1: led_yellow = 1; Sound_Play(975, 80);  break; // 150 * 2.5
L_partida27:
	BSF        PORTB+0, 1
	MOVLW      207
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,79 :: 		case 2: led_blue = 1;   Sound_Play(900, 80);  break; // 120 * 2.5
L_partida28:
	BSF        PORTB+0, 3
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,80 :: 		case 3: led_green = 1;  Sound_Play(825, 80);  break; // 90 * 2.5
L_partida29:
	BSF        PORTB+0, 2
	MOVLW      57
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,81 :: 		}
L_partida24:
	MOVF       FLOC__partida+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida99
	MOVLW      0
	XORWF      R1+0, 0
L__partida99:
	BTFSC      STATUS+0, 2
	GOTO       L_partida26
	MOVF       FLOC__partida+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida100
	MOVLW      1
	XORWF      R1+0, 0
L__partida100:
	BTFSC      STATUS+0, 2
	GOTO       L_partida27
	MOVF       FLOC__partida+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida101
	MOVLW      2
	XORWF      R1+0, 0
L__partida101:
	BTFSC      STATUS+0, 2
	GOTO       L_partida28
	MOVF       FLOC__partida+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida102
	MOVLW      3
	XORWF      R1+0, 0
L__partida102:
	BTFSC      STATUS+0, 2
	GOTO       L_partida29
L_partida25:
;ProjectMemoryGame.c,82 :: 		delay_ms(480); // 800 ? 480
	MOVLW      5
	MOVWF      R11+0
	MOVLW      223
	MOVWF      R12+0
	MOVLW      187
	MOVWF      R13+0
L_partida30:
	DECFSZ     R13+0, 1
	GOTO       L_partida30
	DECFSZ     R12+0, 1
	GOTO       L_partida30
	DECFSZ     R11+0, 1
	GOTO       L_partida30
	NOP
	NOP
;ProjectMemoryGame.c,83 :: 		led_red = led_yellow = led_green = led_blue = 0;
	BCF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__partida103
	BCF        PORTB+0, 2
	GOTO       L__partida104
L__partida103:
	BSF        PORTB+0, 2
L__partida104:
	BTFSC      PORTB+0, 2
	GOTO       L__partida105
	BCF        PORTB+0, 1
	GOTO       L__partida106
L__partida105:
	BSF        PORTB+0, 1
L__partida106:
	BTFSC      PORTB+0, 1
	GOTO       L__partida107
	BCF        PORTB+0, 0
	GOTO       L__partida108
L__partida107:
	BSF        PORTB+0, 0
L__partida108:
;ProjectMemoryGame.c,84 :: 		delay_ms(360); // 600 ? 360
	MOVLW      4
	MOVWF      R11+0
	MOVLW      168
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_partida31:
	DECFSZ     R13+0, 1
	GOTO       L_partida31
	DECFSZ     R12+0, 1
	GOTO       L_partida31
	DECFSZ     R11+0, 1
	GOTO       L_partida31
	NOP
	NOP
;ProjectMemoryGame.c,75 :: 		for(j = 0; j <= step; j++) {
	INCF       _j+0, 1
;ProjectMemoryGame.c,85 :: 		}
	GOTO       L_partida21
L_partida22:
;ProjectMemoryGame.c,87 :: 		delay_ms(700); // 1200 ? 700
	MOVLW      8
	MOVWF      R11+0
	MOVLW      27
	MOVWF      R12+0
	MOVLW      39
	MOVWF      R13+0
L_partida32:
	DECFSZ     R13+0, 1
	GOTO       L_partida32
	DECFSZ     R12+0, 1
	GOTO       L_partida32
	DECFSZ     R11+0, 1
	GOTO       L_partida32
;ProjectMemoryGame.c,88 :: 		jogada = 0;
	CLRF       _jogada+0
	CLRF       _jogada+1
;ProjectMemoryGame.c,89 :: 		espera = 0;
	CLRF       _espera+0
	CLRF       _espera+1
;ProjectMemoryGame.c,92 :: 		while(jogada <= step && situacao) {
L_partida33:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _jogada+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida109
	MOVF       _jogada+0, 0
	SUBWF      _step+0, 0
L__partida109:
	BTFSS      STATUS+0, 0
	GOTO       L_partida34
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida34
L__partida78:
;ProjectMemoryGame.c,93 :: 		if(!press_button && !espera) {
	MOVF       _press_button+0, 0
	IORWF      _press_button+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
	MOVF       _espera+0, 0
	IORWF      _espera+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
L__partida77:
;ProjectMemoryGame.c,94 :: 		if(botao_red) {
	BTFSS      PORTB+0, 4
	GOTO       L_partida40
;ProjectMemoryGame.c,95 :: 		press_button = 1;
	MOVLW      1
	MOVWF      _press_button+0
	MOVLW      0
	MOVWF      _press_button+1
;ProjectMemoryGame.c,96 :: 		led_red = 1;
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,97 :: 		Sound_Play(1055, 80);
	MOVLW      31
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,98 :: 		if(sequencia[jogada] != 0) situacao = 0;
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	MOVF       _jogada+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida110
	MOVLW      0
	XORWF      R1+0, 0
L__partida110:
	BTFSC      STATUS+0, 2
	GOTO       L_partida41
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida41:
;ProjectMemoryGame.c,99 :: 		}
	GOTO       L_partida42
L_partida40:
;ProjectMemoryGame.c,100 :: 		else if(botao_yellow) {
	BTFSS      PORTB+0, 5
	GOTO       L_partida43
;ProjectMemoryGame.c,101 :: 		press_button = 1;
	MOVLW      1
	MOVWF      _press_button+0
	MOVLW      0
	MOVWF      _press_button+1
;ProjectMemoryGame.c,102 :: 		led_yellow = 1;
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,103 :: 		Sound_Play(975, 80);
	MOVLW      207
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,104 :: 		if(sequencia[jogada] != 1) situacao = 0;
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	MOVF       _jogada+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida111
	MOVLW      1
	XORWF      R1+0, 0
L__partida111:
	BTFSC      STATUS+0, 2
	GOTO       L_partida44
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida44:
;ProjectMemoryGame.c,105 :: 		}
	GOTO       L_partida45
L_partida43:
;ProjectMemoryGame.c,106 :: 		else if(botao_blue) {
	BTFSS      PORTB+0, 7
	GOTO       L_partida46
;ProjectMemoryGame.c,107 :: 		press_button = 1;
	MOVLW      1
	MOVWF      _press_button+0
	MOVLW      0
	MOVWF      _press_button+1
;ProjectMemoryGame.c,108 :: 		led_blue = 1;
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,109 :: 		Sound_Play(900, 80);
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,110 :: 		if(sequencia[jogada] != 2) situacao = 0;
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	MOVF       _jogada+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida112
	MOVLW      2
	XORWF      R1+0, 0
L__partida112:
	BTFSC      STATUS+0, 2
	GOTO       L_partida47
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida47:
;ProjectMemoryGame.c,111 :: 		}
	GOTO       L_partida48
L_partida46:
;ProjectMemoryGame.c,112 :: 		else if(botao_green) {
	BTFSS      PORTB+0, 6
	GOTO       L_partida49
;ProjectMemoryGame.c,113 :: 		press_button = 1;
	MOVLW      1
	MOVWF      _press_button+0
	MOVLW      0
	MOVWF      _press_button+1
;ProjectMemoryGame.c,114 :: 		led_green = 1;
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,115 :: 		Sound_Play(825, 80);
	MOVLW      57
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,116 :: 		if(sequencia[jogada] != 3) situacao = 0;
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	MOVF       _jogada+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida113
	MOVLW      3
	XORWF      R1+0, 0
L__partida113:
	BTFSC      STATUS+0, 2
	GOTO       L_partida50
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida50:
;ProjectMemoryGame.c,117 :: 		}
L_partida49:
L_partida48:
L_partida45:
L_partida42:
;ProjectMemoryGame.c,119 :: 		if(press_button) {
	MOVF       _press_button+0, 0
	IORWF      _press_button+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida51
;ProjectMemoryGame.c,120 :: 		delay_ms(120); // 200 ? 120
	MOVLW      2
	MOVWF      R11+0
	MOVLW      56
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_partida52:
	DECFSZ     R13+0, 1
	GOTO       L_partida52
	DECFSZ     R12+0, 1
	GOTO       L_partida52
	DECFSZ     R11+0, 1
	GOTO       L_partida52
;ProjectMemoryGame.c,121 :: 		espera = 1;
	MOVLW      1
	MOVWF      _espera+0
	MOVLW      0
	MOVWF      _espera+1
;ProjectMemoryGame.c,122 :: 		}
L_partida51:
;ProjectMemoryGame.c,123 :: 		}
	GOTO       L_partida53
L_partida39:
;ProjectMemoryGame.c,124 :: 		else if(press_button && espera) {
	MOVF       _press_button+0, 0
	IORWF      _press_button+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
	MOVF       _espera+0, 0
	IORWF      _espera+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
L__partida76:
;ProjectMemoryGame.c,125 :: 		if(!botao_red && !botao_yellow && !botao_blue && !botao_green) {
	BTFSC      PORTB+0, 4
	GOTO       L_partida59
	BTFSC      PORTB+0, 5
	GOTO       L_partida59
	BTFSC      PORTB+0, 7
	GOTO       L_partida59
	BTFSC      PORTB+0, 6
	GOTO       L_partida59
L__partida75:
;ProjectMemoryGame.c,126 :: 		press_button = 0;
	CLRF       _press_button+0
	CLRF       _press_button+1
;ProjectMemoryGame.c,127 :: 		espera = 0;
	CLRF       _espera+0
	CLRF       _espera+1
;ProjectMemoryGame.c,128 :: 		jogada++;
	INCF       _jogada+0, 1
	BTFSC      STATUS+0, 2
	INCF       _jogada+1, 1
;ProjectMemoryGame.c,129 :: 		led_red = led_yellow = led_blue = led_green = 0;
	BCF        PORTB+0, 2
	BTFSC      PORTB+0, 2
	GOTO       L__partida114
	BCF        PORTB+0, 3
	GOTO       L__partida115
L__partida114:
	BSF        PORTB+0, 3
L__partida115:
	BTFSC      PORTB+0, 3
	GOTO       L__partida116
	BCF        PORTB+0, 1
	GOTO       L__partida117
L__partida116:
	BSF        PORTB+0, 1
L__partida117:
	BTFSC      PORTB+0, 1
	GOTO       L__partida118
	BCF        PORTB+0, 0
	GOTO       L__partida119
L__partida118:
	BSF        PORTB+0, 0
L__partida119:
;ProjectMemoryGame.c,130 :: 		}
L_partida59:
;ProjectMemoryGame.c,131 :: 		}
L_partida56:
L_partida53:
;ProjectMemoryGame.c,132 :: 		}
	GOTO       L_partida33
L_partida34:
;ProjectMemoryGame.c,134 :: 		delay_ms(700); // 1200 ? 700
	MOVLW      8
	MOVWF      R11+0
	MOVLW      27
	MOVWF      R12+0
	MOVLW      39
	MOVWF      R13+0
L_partida60:
	DECFSZ     R13+0, 1
	GOTO       L_partida60
	DECFSZ     R12+0, 1
	GOTO       L_partida60
	DECFSZ     R11+0, 1
	GOTO       L_partida60
;ProjectMemoryGame.c,135 :: 		step++;
	INCF       _step+0, 1
	BTFSC      STATUS+0, 2
	INCF       _step+1, 1
;ProjectMemoryGame.c,136 :: 		delay_ms(480); // 800 ? 480
	MOVLW      5
	MOVWF      R11+0
	MOVLW      223
	MOVWF      R12+0
	MOVLW      187
	MOVWF      R13+0
L_partida61:
	DECFSZ     R13+0, 1
	GOTO       L_partida61
	DECFSZ     R12+0, 1
	GOTO       L_partida61
	DECFSZ     R11+0, 1
	GOTO       L_partida61
	NOP
	NOP
;ProjectMemoryGame.c,137 :: 		}
	GOTO       L_partida17
L_partida18:
;ProjectMemoryGame.c,138 :: 		}
L_end_partida:
	RETURN
; end of _partida

_reseta_led:

;ProjectMemoryGame.c,141 :: 		void reseta_led() {
;ProjectMemoryGame.c,142 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,143 :: 		led_blue = 0;
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,144 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,145 :: 		led_yellow = 0;
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,146 :: 		}
L_end_reseta_led:
	RETURN
; end of _reseta_led

_aguarda_e_gera_semente:

;ProjectMemoryGame.c,148 :: 		void aguarda_e_gera_semente() {
;ProjectMemoryGame.c,149 :: 		unsigned int tempo = 0;
	CLRF       aguarda_e_gera_semente_tempo_L0+0
	CLRF       aguarda_e_gera_semente_tempo_L0+1
;ProjectMemoryGame.c,150 :: 		led_green = 1;
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,151 :: 		while(botao_green == 0) {
L_aguarda_e_gera_semente62:
	BTFSC      PORTB+0, 6
	GOTO       L_aguarda_e_gera_semente63
;ProjectMemoryGame.c,152 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aguarda_e_gera_semente64:
	DECFSZ     R13+0, 1
	GOTO       L_aguarda_e_gera_semente64
	DECFSZ     R12+0, 1
	GOTO       L_aguarda_e_gera_semente64
	NOP
	NOP
;ProjectMemoryGame.c,153 :: 		tempo++;
	INCF       aguarda_e_gera_semente_tempo_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       aguarda_e_gera_semente_tempo_L0+1, 1
;ProjectMemoryGame.c,154 :: 		}
	GOTO       L_aguarda_e_gera_semente62
L_aguarda_e_gera_semente63:
;ProjectMemoryGame.c,155 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,156 :: 		srand(tempo);
	MOVF       aguarda_e_gera_semente_tempo_L0+0, 0
	MOVWF      FARG_srand_x+0
	MOVF       aguarda_e_gera_semente_tempo_L0+1, 0
	MOVWF      FARG_srand_x+1
	CALL       _srand+0
;ProjectMemoryGame.c,157 :: 		}
L_end_aguarda_e_gera_semente:
	RETURN
; end of _aguarda_e_gera_semente

_main:

;ProjectMemoryGame.c,159 :: 		void main() {
;ProjectMemoryGame.c,160 :: 		TRISB = 0b11110000;  // RB4–RB7 como entrada, RB0–RB3 como saída (LEDs)
	MOVLW      240
	MOVWF      TRISB+0
;ProjectMemoryGame.c,161 :: 		TRISA = 0b00000010;  // RA1 como entrada, RA0 como saída (buzzer)
	MOVLW      2
	MOVWF      TRISA+0
;ProjectMemoryGame.c,162 :: 		PORTB = 0;
	CLRF       PORTB+0
;ProjectMemoryGame.c,163 :: 		PORTA = 1;
	MOVLW      1
	MOVWF      PORTA+0
;ProjectMemoryGame.c,164 :: 		Sound_Init(&PORTA, 0);
	MOVLW      PORTA+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;ProjectMemoryGame.c,167 :: 		while(1){
L_main65:
;ProjectMemoryGame.c,168 :: 		aguarda_e_gera_semente();     // Gera semente randômica
	CALL       _aguarda_e_gera_semente+0
;ProjectMemoryGame.c,169 :: 		apresentacao();               // Animação inicial com delays ajustados
	CALL       _apresentacao+0
;ProjectMemoryGame.c,170 :: 		delay_ms(400);                // Antes: 2000 ? Ajustado para 700ms
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main67:
	DECFSZ     R13+0, 1
	GOTO       L_main67
	DECFSZ     R12+0, 1
	GOTO       L_main67
	DECFSZ     R11+0, 1
	GOTO       L_main67
;ProjectMemoryGame.c,172 :: 		partida();                    // Rodada principal já ajustada
	CALL       _partida+0
;ProjectMemoryGame.c,174 :: 		if(situacao) {                // Jogador venceu rodada
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main68
;ProjectMemoryGame.c,175 :: 		Sound_Play(900, 60);       // Antes: 120ms ? Ajustado para resposta rápida
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      60
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,176 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main69:
	DECFSZ     R13+0, 1
	GOTO       L_main69
	DECFSZ     R12+0, 1
	GOTO       L_main69
;ProjectMemoryGame.c,177 :: 		Sound_Play(1030, 60);
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      60
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,178 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main70:
	DECFSZ     R13+0, 1
	GOTO       L_main70
	DECFSZ     R12+0, 1
	GOTO       L_main70
;ProjectMemoryGame.c,179 :: 		Sound_Play(1220, 60);
	MOVLW      196
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      60
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,180 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main71:
	DECFSZ     R13+0, 1
	GOTO       L_main71
	DECFSZ     R12+0, 1
	GOTO       L_main71
;ProjectMemoryGame.c,182 :: 		step = 0; jogada = 0; situacao = 1;
	CLRF       _step+0
	CLRF       _step+1
	CLRF       _jogada+0
	CLRF       _jogada+1
	MOVLW      1
	MOVWF      _situacao+0
	MOVLW      0
	MOVWF      _situacao+1
;ProjectMemoryGame.c,183 :: 		press_button = 0; espera = 0;
	CLRF       _press_button+0
	CLRF       _press_button+1
	CLRF       _espera+0
	CLRF       _espera+1
;ProjectMemoryGame.c,184 :: 		partidas++;
	INCF       _partidas+0, 1
	BTFSC      STATUS+0, 2
	INCF       _partidas+1, 1
;ProjectMemoryGame.c,185 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,187 :: 		if(partidas >= 30) partidas = 30;
	MOVLW      128
	XORWF      _partidas+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main123
	MOVLW      30
	SUBWF      _partidas+0, 0
L__main123:
	BTFSS      STATUS+0, 0
	GOTO       L_main72
	MOVLW      30
	MOVWF      _partidas+0
	MOVLW      0
	MOVWF      _partidas+1
L_main72:
;ProjectMemoryGame.c,188 :: 		}
	GOTO       L_main73
L_main68:
;ProjectMemoryGame.c,190 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,191 :: 		led_red = 1;
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,192 :: 		Sound_Play(900, 250);      // Antes: 400ms ? Ajustado para 180ms
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,193 :: 		delay_ms(250);            // Antes: 600ms ? Ajustado para 250ms
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main74:
	DECFSZ     R13+0, 1
	GOTO       L_main74
	DECFSZ     R12+0, 1
	GOTO       L_main74
	DECFSZ     R11+0, 1
	GOTO       L_main74
	NOP
	NOP
;ProjectMemoryGame.c,194 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,195 :: 		reseta_variavel();
	CALL       _reseta_variavel+0
;ProjectMemoryGame.c,196 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,197 :: 		}
L_main73:
;ProjectMemoryGame.c,198 :: 		}
	GOTO       L_main65
;ProjectMemoryGame.c,199 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
