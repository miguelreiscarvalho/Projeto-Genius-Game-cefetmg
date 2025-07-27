
_reseta_variavel:

;ProjectMemoryGame.c,20 :: 		void reseta_variavel(){
;ProjectMemoryGame.c,21 :: 		step = 0, jogada = 0, situacao = 1;
	CLRF       _step+0
	CLRF       _step+1
	CLRF       _jogada+0
	CLRF       _jogada+1
	MOVLW      1
	MOVWF      _situacao+0
	MOVLW      0
	MOVWF      _situacao+1
;ProjectMemoryGame.c,22 :: 		press_button = 0, espera = 0;
	CLRF       _press_button+0
	CLRF       _espera+0
;ProjectMemoryGame.c,23 :: 		}
L_end_reseta_variavel:
	RETURN
; end of _reseta_variavel

_apresentacao:

;ProjectMemoryGame.c,26 :: 		void apresentacao() {
;ProjectMemoryGame.c,27 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_apresentacao0:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao0
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao0
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao0
	NOP
	NOP
;ProjectMemoryGame.c,29 :: 		led_red = 1; led_yellow = 1; led_green = 0; led_blue = 0;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,30 :: 		Sound_Play(132, 1000); delay_ms(1000);
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;ProjectMemoryGame.c,32 :: 		led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,33 :: 		Sound_Play(70, 1200); delay_ms(1200);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      176
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_apresentacao2:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao2
	NOP
;ProjectMemoryGame.c,35 :: 		led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,36 :: 		Sound_Play(180, 1400); delay_ms(1400);
	MOVLW      180
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      120
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      8
	MOVWF      R11+0
	MOVLW      27
	MOVWF      R12+0
	MOVLW      39
	MOVWF      R13+0
L_apresentacao3:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao3
;ProjectMemoryGame.c,38 :: 		led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BCF        PORTB+0, 2
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,39 :: 		delay_ms(450);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      73
	MOVWF      R12+0
	MOVLW      102
	MOVWF      R13+0
L_apresentacao4:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao4
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao4
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao4
	NOP
;ProjectMemoryGame.c,41 :: 		for (i = 0; i < 5; i++) {
	CLRF       _i+0
L_apresentacao5:
	MOVLW      5
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_apresentacao6
;ProjectMemoryGame.c,42 :: 		led_red = 1; led_green = 0;
	BSF        PORTB+0, 0
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,43 :: 		Sound_Play(41, 160); delay_ms(160);
	MOVLW      41
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      160
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_apresentacao8:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao8
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao8
	NOP
	NOP
;ProjectMemoryGame.c,45 :: 		led_red = 0; led_blue = 1;
	BCF        PORTB+0, 0
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,46 :: 		Sound_Play(85, 160); delay_ms(160);
	MOVLW      85
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      160
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_apresentacao9:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao9
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao9
	NOP
	NOP
;ProjectMemoryGame.c,48 :: 		led_blue = 0; led_yellow = 1;
	BCF        PORTB+0, 3
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,49 :: 		Sound_Play(116, 160); delay_ms(160);
	MOVLW      116
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      160
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_apresentacao10:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao10
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao10
	NOP
	NOP
;ProjectMemoryGame.c,51 :: 		led_yellow = 0; led_green = 1;
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,52 :: 		Sound_Play(182, 300); delay_ms(300);
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_apresentacao11:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao11
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao11
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao11
;ProjectMemoryGame.c,41 :: 		for (i = 0; i < 5; i++) {
	INCF       _i+0, 1
;ProjectMemoryGame.c,53 :: 		}
	GOTO       L_apresentacao5
L_apresentacao6:
;ProjectMemoryGame.c,55 :: 		for (i = 0; i < 6; i++) {
	CLRF       _i+0
L_apresentacao12:
	MOVLW      6
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_apresentacao13
;ProjectMemoryGame.c,56 :: 		led_red = led_yellow = led_green = led_blue = 1;
	BSF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__apresentacao81
	BCF        PORTB+0, 2
	GOTO       L__apresentacao82
L__apresentacao81:
	BSF        PORTB+0, 2
L__apresentacao82:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao83
	BCF        PORTB+0, 1
	GOTO       L__apresentacao84
L__apresentacao83:
	BSF        PORTB+0, 1
L__apresentacao84:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao85
	BCF        PORTB+0, 0
	GOTO       L__apresentacao86
L__apresentacao85:
	BSF        PORTB+0, 0
L__apresentacao86:
;ProjectMemoryGame.c,57 :: 		Sound_Play(70, 400); delay_ms(100);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      144
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_apresentacao15:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao15
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao15
	NOP
	NOP
;ProjectMemoryGame.c,58 :: 		led_red = led_yellow = led_green = led_blue = 0;
	BCF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__apresentacao87
	BCF        PORTB+0, 2
	GOTO       L__apresentacao88
L__apresentacao87:
	BSF        PORTB+0, 2
L__apresentacao88:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao89
	BCF        PORTB+0, 1
	GOTO       L__apresentacao90
L__apresentacao89:
	BSF        PORTB+0, 1
L__apresentacao90:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao91
	BCF        PORTB+0, 0
	GOTO       L__apresentacao92
L__apresentacao91:
	BSF        PORTB+0, 0
L__apresentacao92:
;ProjectMemoryGame.c,59 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_apresentacao16:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao16
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao16
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao16
;ProjectMemoryGame.c,55 :: 		for (i = 0; i < 6; i++) {
	INCF       _i+0, 1
;ProjectMemoryGame.c,60 :: 		}
	GOTO       L_apresentacao12
L_apresentacao13:
;ProjectMemoryGame.c,61 :: 		}
L_end_apresentacao:
	RETURN
; end of _apresentacao

_partida:

;ProjectMemoryGame.c,65 :: 		void partida() {
;ProjectMemoryGame.c,66 :: 		while(step < partidas && situacao) {
L_partida17:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida94
	MOVF       _partidas+0, 0
	SUBWF      _step+0, 0
L__partida94:
	BTFSC      STATUS+0, 0
	GOTO       L_partida18
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida18
L__partida78:
;ProjectMemoryGame.c,67 :: 		sequencia[step] = rand() % 4;
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
;ProjectMemoryGame.c,69 :: 		for(j = 0; j <= step; j++) {
	CLRF       _j+0
L_partida21:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida95
	MOVF       _j+0, 0
	SUBWF      _step+0, 0
L__partida95:
	BTFSS      STATUS+0, 0
	GOTO       L_partida22
;ProjectMemoryGame.c,70 :: 		switch(sequencia[j]) {
	MOVF       _j+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FLOC__partida+0
	GOTO       L_partida24
;ProjectMemoryGame.c,71 :: 		case 0: led_red = 1; Sound_Play(182, 300); break;
L_partida26:
	BSF        PORTB+0, 0
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,72 :: 		case 1: led_yellow = 1; Sound_Play(150, 300); break;
L_partida27:
	BSF        PORTB+0, 1
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,73 :: 		case 2: led_blue = 1; Sound_Play(120, 300); break;
L_partida28:
	BSF        PORTB+0, 3
	MOVLW      120
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,74 :: 		case 3: led_green = 1; Sound_Play(90, 300); break;
L_partida29:
	BSF        PORTB+0, 2
	MOVLW      90
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	GOTO       L_partida25
;ProjectMemoryGame.c,75 :: 		}
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
	GOTO       L__partida96
	MOVLW      0
	XORWF      R1+0, 0
L__partida96:
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
	GOTO       L__partida97
	MOVLW      1
	XORWF      R1+0, 0
L__partida97:
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
	GOTO       L__partida98
	MOVLW      2
	XORWF      R1+0, 0
L__partida98:
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
	GOTO       L__partida99
	MOVLW      3
	XORWF      R1+0, 0
L__partida99:
	BTFSC      STATUS+0, 2
	GOTO       L_partida29
L_partida25:
;ProjectMemoryGame.c,76 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;ProjectMemoryGame.c,77 :: 		led_red = led_yellow = led_green = led_blue = 0;
	BCF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__partida100
	BCF        PORTB+0, 2
	GOTO       L__partida101
L__partida100:
	BSF        PORTB+0, 2
L__partida101:
	BTFSC      PORTB+0, 2
	GOTO       L__partida102
	BCF        PORTB+0, 1
	GOTO       L__partida103
L__partida102:
	BSF        PORTB+0, 1
L__partida103:
	BTFSC      PORTB+0, 1
	GOTO       L__partida104
	BCF        PORTB+0, 0
	GOTO       L__partida105
L__partida104:
	BSF        PORTB+0, 0
L__partida105:
;ProjectMemoryGame.c,78 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;ProjectMemoryGame.c,69 :: 		for(j = 0; j <= step; j++) {
	INCF       _j+0, 1
;ProjectMemoryGame.c,79 :: 		}
	GOTO       L_partida21
L_partida22:
;ProjectMemoryGame.c,81 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_partida32:
	DECFSZ     R13+0, 1
	GOTO       L_partida32
	DECFSZ     R12+0, 1
	GOTO       L_partida32
	DECFSZ     R11+0, 1
	GOTO       L_partida32
	NOP
	NOP
;ProjectMemoryGame.c,82 :: 		jogada = 0;
	CLRF       _jogada+0
	CLRF       _jogada+1
;ProjectMemoryGame.c,83 :: 		espera = 0;
	CLRF       _espera+0
;ProjectMemoryGame.c,85 :: 		while(jogada <= step && situacao) {
L_partida33:
	MOVLW      128
	XORWF      _step+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _jogada+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__partida106
	MOVF       _jogada+0, 0
	SUBWF      _step+0, 0
L__partida106:
	BTFSS      STATUS+0, 0
	GOTO       L_partida34
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida34
L__partida77:
;ProjectMemoryGame.c,86 :: 		if(!press_button && !espera) {
	MOVF       _press_button+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
	MOVF       _espera+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
L__partida76:
;ProjectMemoryGame.c,87 :: 		if(botao_red)    { press_button = 1; led_red = 1; Sound_Play(182, 300); if(sequencia[jogada] != 0) situacao = 0; }
	BTFSS      PORTB+0, 4
	GOTO       L_partida40
	MOVLW      1
	MOVWF      _press_button+0
	BSF        PORTB+0, 0
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
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
	GOTO       L__partida107
	MOVLW      0
	XORWF      R1+0, 0
L__partida107:
	BTFSC      STATUS+0, 2
	GOTO       L_partida41
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida41:
	GOTO       L_partida42
L_partida40:
;ProjectMemoryGame.c,88 :: 		else if(botao_yellow) { press_button = 1; led_yellow = 1; Sound_Play(150, 300); if(sequencia[jogada] != 1) situacao = 0; }
	BTFSS      PORTB+0, 5
	GOTO       L_partida43
	MOVLW      1
	MOVWF      _press_button+0
	BSF        PORTB+0, 1
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
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
	GOTO       L__partida108
	MOVLW      1
	XORWF      R1+0, 0
L__partida108:
	BTFSC      STATUS+0, 2
	GOTO       L_partida44
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida44:
	GOTO       L_partida45
L_partida43:
;ProjectMemoryGame.c,89 :: 		else if(botao_blue)   { press_button = 1; led_blue = 1; Sound_Play(120, 300); if(sequencia[jogada] != 2) situacao = 0; }
	BTFSS      PORTB+0, 7
	GOTO       L_partida46
	MOVLW      1
	MOVWF      _press_button+0
	BSF        PORTB+0, 3
	MOVLW      120
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
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
	GOTO       L__partida109
	MOVLW      2
	XORWF      R1+0, 0
L__partida109:
	BTFSC      STATUS+0, 2
	GOTO       L_partida47
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida47:
	GOTO       L_partida48
L_partida46:
;ProjectMemoryGame.c,90 :: 		else if(botao_green)  { press_button = 1; led_green = 1; Sound_Play(90, 300); if(sequencia[jogada] != 3) situacao = 0; }
	BTFSS      PORTB+0, 6
	GOTO       L_partida49
	MOVLW      1
	MOVWF      _press_button+0
	BSF        PORTB+0, 2
	MOVLW      90
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
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
	MOVLW      3
	XORWF      R1+0, 0
L__partida110:
	BTFSC      STATUS+0, 2
	GOTO       L_partida50
	CLRF       _situacao+0
	CLRF       _situacao+1
L_partida50:
L_partida49:
L_partida48:
L_partida45:
L_partida42:
;ProjectMemoryGame.c,92 :: 		if(press_button) { delay_ms(500); espera = 1; }
	MOVF       _press_button+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida51
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_partida52:
	DECFSZ     R13+0, 1
	GOTO       L_partida52
	DECFSZ     R12+0, 1
	GOTO       L_partida52
	DECFSZ     R11+0, 1
	GOTO       L_partida52
	NOP
	NOP
	MOVLW      1
	MOVWF      _espera+0
L_partida51:
;ProjectMemoryGame.c,93 :: 		}
	GOTO       L_partida53
L_partida39:
;ProjectMemoryGame.c,94 :: 		else if(press_button && espera) {
	MOVF       _press_button+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
	MOVF       _espera+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
L__partida75:
;ProjectMemoryGame.c,95 :: 		if(!botao_red && !botao_yellow && !botao_blue && !botao_green) {
	BTFSC      PORTB+0, 4
	GOTO       L_partida59
	BTFSC      PORTB+0, 5
	GOTO       L_partida59
	BTFSC      PORTB+0, 7
	GOTO       L_partida59
	BTFSC      PORTB+0, 6
	GOTO       L_partida59
L__partida74:
;ProjectMemoryGame.c,96 :: 		press_button = 0;
	CLRF       _press_button+0
;ProjectMemoryGame.c,97 :: 		espera = 0;
	CLRF       _espera+0
;ProjectMemoryGame.c,98 :: 		jogada++;
	INCF       _jogada+0, 1
	BTFSC      STATUS+0, 2
	INCF       _jogada+1, 1
;ProjectMemoryGame.c,99 :: 		led_red = led_yellow = led_blue = led_green = 0;
	BCF        PORTB+0, 2
	BTFSC      PORTB+0, 2
	GOTO       L__partida111
	BCF        PORTB+0, 3
	GOTO       L__partida112
L__partida111:
	BSF        PORTB+0, 3
L__partida112:
	BTFSC      PORTB+0, 3
	GOTO       L__partida113
	BCF        PORTB+0, 1
	GOTO       L__partida114
L__partida113:
	BSF        PORTB+0, 1
L__partida114:
	BTFSC      PORTB+0, 1
	GOTO       L__partida115
	BCF        PORTB+0, 0
	GOTO       L__partida116
L__partida115:
	BSF        PORTB+0, 0
L__partida116:
;ProjectMemoryGame.c,100 :: 		}
L_partida59:
;ProjectMemoryGame.c,101 :: 		}
L_partida56:
L_partida53:
;ProjectMemoryGame.c,102 :: 		}
	GOTO       L_partida33
L_partida34:
;ProjectMemoryGame.c,104 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_partida60:
	DECFSZ     R13+0, 1
	GOTO       L_partida60
	DECFSZ     R12+0, 1
	GOTO       L_partida60
	DECFSZ     R11+0, 1
	GOTO       L_partida60
	NOP
	NOP
;ProjectMemoryGame.c,105 :: 		step++;
	INCF       _step+0, 1
	BTFSC      STATUS+0, 2
	INCF       _step+1, 1
;ProjectMemoryGame.c,106 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;ProjectMemoryGame.c,107 :: 		}
	GOTO       L_partida17
L_partida18:
;ProjectMemoryGame.c,108 :: 		}
L_end_partida:
	RETURN
; end of _partida

_reseta_led:

;ProjectMemoryGame.c,110 :: 		void reseta_led(){
;ProjectMemoryGame.c,112 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,113 :: 		led_blue = 0;
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,114 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,115 :: 		led_yellow = 0;
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,117 :: 		}
L_end_reseta_led:
	RETURN
; end of _reseta_led

_aguarda_e_gera_semente:

;ProjectMemoryGame.c,120 :: 		void aguarda_e_gera_semente() {
;ProjectMemoryGame.c,121 :: 		unsigned int tempo = 0;
	CLRF       aguarda_e_gera_semente_tempo_L0+0
	CLRF       aguarda_e_gera_semente_tempo_L0+1
;ProjectMemoryGame.c,122 :: 		led_red = 1;
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,123 :: 		while(botao_red == 0) {
L_aguarda_e_gera_semente62:
	BTFSC      PORTB+0, 4
	GOTO       L_aguarda_e_gera_semente63
;ProjectMemoryGame.c,124 :: 		delay_ms(1);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_aguarda_e_gera_semente64:
	DECFSZ     R13+0, 1
	GOTO       L_aguarda_e_gera_semente64
	DECFSZ     R12+0, 1
	GOTO       L_aguarda_e_gera_semente64
;ProjectMemoryGame.c,125 :: 		tempo++;
	INCF       aguarda_e_gera_semente_tempo_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       aguarda_e_gera_semente_tempo_L0+1, 1
;ProjectMemoryGame.c,126 :: 		}
	GOTO       L_aguarda_e_gera_semente62
L_aguarda_e_gera_semente63:
;ProjectMemoryGame.c,128 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,129 :: 		srand(tempo);  // Usa o tempo como semente
	MOVF       aguarda_e_gera_semente_tempo_L0+0, 0
	MOVWF      FARG_srand_x+0
	MOVF       aguarda_e_gera_semente_tempo_L0+1, 0
	MOVWF      FARG_srand_x+1
	CALL       _srand+0
;ProjectMemoryGame.c,130 :: 		}
L_end_aguarda_e_gera_semente:
	RETURN
; end of _aguarda_e_gera_semente

_main:

;ProjectMemoryGame.c,132 :: 		void main() {
;ProjectMemoryGame.c,133 :: 		TRISB = 0b11110000; // RB4 a RB7 como entrada (botões) // RB0 a RB3 LEDs
	MOVLW      240
	MOVWF      TRISB+0
;ProjectMemoryGame.c,134 :: 		TRISA = 0b00000010;
	MOVLW      2
	MOVWF      TRISA+0
;ProjectMemoryGame.c,135 :: 		PORTB = 0;
	CLRF       PORTB+0
;ProjectMemoryGame.c,136 :: 		PORTA = 1;
	MOVLW      1
	MOVWF      PORTA+0
;ProjectMemoryGame.c,138 :: 		Sound_Init(&PORTA, 0);
	MOVLW      PORTA+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;ProjectMemoryGame.c,140 :: 		while(1){
L_main65:
;ProjectMemoryGame.c,141 :: 		aguarda_e_gera_semente();  // espera o primeiro clique
	CALL       _aguarda_e_gera_semente+0
;ProjectMemoryGame.c,142 :: 		apresentacao();            // inicia apresentação
	CALL       _apresentacao+0
;ProjectMemoryGame.c,143 :: 		delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main67:
	DECFSZ     R13+0, 1
	GOTO       L_main67
	DECFSZ     R12+0, 1
	GOTO       L_main67
	DECFSZ     R11+0, 1
	GOTO       L_main67
	NOP
;ProjectMemoryGame.c,144 :: 		partida();                 // executa o jogo
	CALL       _partida+0
;ProjectMemoryGame.c,146 :: 		if(situacao) { // vitória
	MOVF       _situacao+0, 0
	IORWF      _situacao+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main68
;ProjectMemoryGame.c,147 :: 		Sound_Play(70, 300);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,148 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main69:
	DECFSZ     R13+0, 1
	GOTO       L_main69
	DECFSZ     R12+0, 1
	GOTO       L_main69
	DECFSZ     R11+0, 1
	GOTO       L_main69
;ProjectMemoryGame.c,149 :: 		Sound_Play(100, 300);
	MOVLW      100
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,150 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main70:
	DECFSZ     R13+0, 1
	GOTO       L_main70
	DECFSZ     R12+0, 1
	GOTO       L_main70
	DECFSZ     R11+0, 1
	GOTO       L_main70
;ProjectMemoryGame.c,151 :: 		Sound_Play(130, 300);
	MOVLW      130
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,152 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main71:
	DECFSZ     R13+0, 1
	GOTO       L_main71
	DECFSZ     R12+0, 1
	GOTO       L_main71
	DECFSZ     R11+0, 1
	GOTO       L_main71
;ProjectMemoryGame.c,153 :: 		step = 0, jogada = 0, situacao = 1;
	CLRF       _step+0
	CLRF       _step+1
	CLRF       _jogada+0
	CLRF       _jogada+1
	MOVLW      1
	MOVWF      _situacao+0
	MOVLW      0
	MOVWF      _situacao+1
;ProjectMemoryGame.c,154 :: 		press_button = 0, espera = 0;
	CLRF       _press_button+0
	CLRF       _espera+0
;ProjectMemoryGame.c,155 :: 		partidas++;
	INCF       _partidas+0, 1
;ProjectMemoryGame.c,156 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,158 :: 		if(partidas >= 30) partidas = 30; // Limita em 30 passos
	MOVLW      30
	SUBWF      _partidas+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main72
	MOVLW      30
	MOVWF      _partidas+0
L_main72:
;ProjectMemoryGame.c,161 :: 		}
	GOTO       L_main73
L_main68:
;ProjectMemoryGame.c,163 :: 		Sound_Play(70, 1000);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,164 :: 		reseta_variavel();
	CALL       _reseta_variavel+0
;ProjectMemoryGame.c,165 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,168 :: 		}
L_main73:
;ProjectMemoryGame.c,169 :: 		}
	GOTO       L_main65
;ProjectMemoryGame.c,170 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
