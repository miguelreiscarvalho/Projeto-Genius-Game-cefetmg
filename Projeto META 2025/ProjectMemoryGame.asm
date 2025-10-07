
_reseta_variavel:

;ProjectMemoryGame.c,20 :: 		void reseta_variavel(){
;ProjectMemoryGame.c,21 :: 		step = 0, jogada = 0, situacao = 1;
	CLRF       _step+0
	CLRF       _jogada+0
	MOVLW      1
	MOVWF      _situacao+0
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
;ProjectMemoryGame.c,30 :: 		Sound_Play(132, 800); delay_ms(800);
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      32
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_apresentacao1:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao1
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao1
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao1
;ProjectMemoryGame.c,32 :: 		led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,33 :: 		Sound_Play(70, 1000); delay_ms(1000);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
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
L_apresentacao2:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao2
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao2
	NOP
	NOP
;ProjectMemoryGame.c,35 :: 		led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
	BSF        PORTB+0, 0
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,36 :: 		Sound_Play(180, 1200); delay_ms(1200);
	MOVLW      180
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
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
L_apresentacao3:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao3
	DECFSZ     R11+0, 1
	GOTO       L_apresentacao3
	NOP
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
;ProjectMemoryGame.c,43 :: 		Sound_Play(41, 180); delay_ms(180);
	MOVLW      41
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      180
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      234
	MOVWF      R12+0
	MOVLW      195
	MOVWF      R13+0
L_apresentacao8:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao8
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao8
;ProjectMemoryGame.c,45 :: 		led_red = 0; led_blue = 1;
	BCF        PORTB+0, 0
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,46 :: 		Sound_Play(85, 180); delay_ms(180);
	MOVLW      85
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      180
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      234
	MOVWF      R12+0
	MOVLW      195
	MOVWF      R13+0
L_apresentacao9:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao9
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao9
;ProjectMemoryGame.c,48 :: 		led_blue = 0; led_yellow = 1;
	BCF        PORTB+0, 3
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,49 :: 		Sound_Play(116, 180); delay_ms(180);
	MOVLW      116
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      180
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      234
	MOVWF      R12+0
	MOVLW      195
	MOVWF      R13+0
L_apresentacao10:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao10
	DECFSZ     R12+0, 1
	GOTO       L_apresentacao10
;ProjectMemoryGame.c,51 :: 		led_yellow = 0; led_green = 1;
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,52 :: 		Sound_Play(182, 180); delay_ms(180);
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      180
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
	MOVLW      234
	MOVWF      R12+0
	MOVLW      195
	MOVWF      R13+0
L_apresentacao11:
	DECFSZ     R13+0, 1
	GOTO       L_apresentacao11
	DECFSZ     R12+0, 1
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
	GOTO       L__apresentacao82
	BCF        PORTB+0, 2
	GOTO       L__apresentacao83
L__apresentacao82:
	BSF        PORTB+0, 2
L__apresentacao83:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao84
	BCF        PORTB+0, 1
	GOTO       L__apresentacao85
L__apresentacao84:
	BSF        PORTB+0, 1
L__apresentacao85:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao86
	BCF        PORTB+0, 0
	GOTO       L__apresentacao87
L__apresentacao86:
	BSF        PORTB+0, 0
L__apresentacao87:
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
	GOTO       L__apresentacao88
	BCF        PORTB+0, 2
	GOTO       L__apresentacao89
L__apresentacao88:
	BSF        PORTB+0, 2
L__apresentacao89:
	BTFSC      PORTB+0, 2
	GOTO       L__apresentacao90
	BCF        PORTB+0, 1
	GOTO       L__apresentacao91
L__apresentacao90:
	BSF        PORTB+0, 1
L__apresentacao91:
	BTFSC      PORTB+0, 1
	GOTO       L__apresentacao92
	BCF        PORTB+0, 0
	GOTO       L__apresentacao93
L__apresentacao92:
	BSF        PORTB+0, 0
L__apresentacao93:
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
;ProjectMemoryGame.c,66 :: 		while(step < partidas && situacao) {   // Termina quando as rodadas terminam ou quando o jogador perder
L_partida17:
	MOVF       _partidas+0, 0
	SUBWF      _step+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_partida18
	MOVF       _situacao+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida18
L__partida79:
;ProjectMemoryGame.c,67 :: 		sequencia[step] = rand() % 4; // Gera??o de n?mero aleat?rio do ultimo passo da rodada atual, limitada em 4: 0 - 3;
	MOVF       _step+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
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
;ProjectMemoryGame.c,71 :: 		for(j = 0; j <= step; j++) { // Loop que exibe todos os leds sorteados em cada passo da rodada
	CLRF       _j+0
L_partida21:
	MOVF       _j+0, 0
	SUBWF      _step+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_partida22
;ProjectMemoryGame.c,72 :: 		switch(sequencia[j]) { // Recebe o valor correspondente ao led sorteado no passo atual
	MOVF       _j+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sequencia+0
	MOVWF      FLOC__partida+0
	GOTO       L_partida24
;ProjectMemoryGame.c,73 :: 		case 0: led_red = 1; Sound_Play(182, 300); break; // Liga o led vermelho se ele for o sorteado no passo atual
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
;ProjectMemoryGame.c,74 :: 		case 1: led_yellow = 1; Sound_Play(150, 300); break; // Liga o led yellow se ele for o sorteado no passo atual
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
;ProjectMemoryGame.c,75 :: 		case 2: led_blue = 1; Sound_Play(120, 300); break; // Liga o led blue se ele for o sorteado no passo atual
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
;ProjectMemoryGame.c,76 :: 		case 3: led_green = 1; Sound_Play(90, 300); break; // Liga o led green se ele for o sorteado no passo atual
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
;ProjectMemoryGame.c,77 :: 		}
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
	GOTO       L__partida95
	MOVLW      0
	XORWF      R1+0, 0
L__partida95:
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
	GOTO       L__partida96
	MOVLW      1
	XORWF      R1+0, 0
L__partida96:
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
	GOTO       L__partida97
	MOVLW      2
	XORWF      R1+0, 0
L__partida97:
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
	GOTO       L__partida98
	MOVLW      3
	XORWF      R1+0, 0
L__partida98:
	BTFSC      STATUS+0, 2
	GOTO       L_partida29
L_partida25:
;ProjectMemoryGame.c,78 :: 		delay_ms(1000); //  Mant?m os leds ligados por 1 segundo, OBS: Alterar isso poder influenciar no par?metro de dificuldade
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
;ProjectMemoryGame.c,79 :: 		led_red = led_yellow = led_green = led_blue = 0; // Desliga todos os leds.
	BCF        PORTB+0, 3
	BTFSC      PORTB+0, 3
	GOTO       L__partida99
	BCF        PORTB+0, 2
	GOTO       L__partida100
L__partida99:
	BSF        PORTB+0, 2
L__partida100:
	BTFSC      PORTB+0, 2
	GOTO       L__partida101
	BCF        PORTB+0, 1
	GOTO       L__partida102
L__partida101:
	BSF        PORTB+0, 1
L__partida102:
	BTFSC      PORTB+0, 1
	GOTO       L__partida103
	BCF        PORTB+0, 0
	GOTO       L__partida104
L__partida103:
	BSF        PORTB+0, 0
L__partida104:
;ProjectMemoryGame.c,80 :: 		delay_ms(500); // Desliga os leds e mant?m os mesmos desligados por 0.5s.
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
;ProjectMemoryGame.c,71 :: 		for(j = 0; j <= step; j++) { // Loop que exibe todos os leds sorteados em cada passo da rodada
	INCF       _j+0, 1
;ProjectMemoryGame.c,81 :: 		} // Fim da exibi??o da rodada atual
	GOTO       L_partida21
L_partida22:
;ProjectMemoryGame.c,86 :: 		delay_ms(3000); // Aguarda um periodo de 3s ap?s a exibi??o da sequ?ncia da rodada atual
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
;ProjectMemoryGame.c,87 :: 		jogada = 0; // Demarca qual passo da rodada estamos verificando se o jogador acertou
	CLRF       _jogada+0
;ProjectMemoryGame.c,88 :: 		espera = 0; // VARI?VEL DE SEGURAN?A: Garante que s? iremos passar para o pr?ximo passo se o usu?rio soltar o bot?o
	CLRF       _espera+0
;ProjectMemoryGame.c,90 :: 		while(jogada <= step && situacao) { // Termina quando todos os passos da rodada s?o executados ou quando o jogador erra a sequ?ncia
L_partida33:
	MOVF       _jogada+0, 0
	SUBWF      _step+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_partida34
	MOVF       _situacao+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida34
L__partida78:
;ProjectMemoryGame.c,92 :: 		if(!press_button && !espera) { // Entra quando o jogador aperta o bot?o e s? entra aqui de novo, quando o us?ario soltar o bot?o
	MOVF       _press_button+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
	MOVF       _espera+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_partida39
L__partida77:
;ProjectMemoryGame.c,95 :: 		if(botao_red)    { // Verifica se o bot?o pressionado foi o vermelho
	BTFSS      PORTB+0, 4
	GOTO       L_partida40
;ProjectMemoryGame.c,96 :: 		press_button = 1; // Marca o bot?o como pressionado
	MOVLW      1
	MOVWF      _press_button+0
;ProjectMemoryGame.c,97 :: 		led_red = 1; // Liga o led vermelho
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,98 :: 		Sound_Play(182, 300); // Executa o som correspondente ao led vermelho
	MOVLW      182
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,99 :: 		if(sequencia[jogada] != 0) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
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
	GOTO       L__partida105
	MOVLW      0
	XORWF      R1+0, 0
L__partida105:
	BTFSC      STATUS+0, 2
	GOTO       L_partida41
	CLRF       _situacao+0
L_partida41:
;ProjectMemoryGame.c,100 :: 		}
	GOTO       L_partida42
L_partida40:
;ProjectMemoryGame.c,101 :: 		else if(botao_yellow) { // Verifica se o bot?o pressionado foi o amarelho
	BTFSS      PORTB+0, 5
	GOTO       L_partida43
;ProjectMemoryGame.c,102 :: 		press_button = 1; // Marca o bot?o como pressionado
	MOVLW      1
	MOVWF      _press_button+0
;ProjectMemoryGame.c,103 :: 		led_yellow = 1; // Liga o led amarelo
	BSF        PORTB+0, 1
;ProjectMemoryGame.c,104 :: 		Sound_Play(150, 300); // Executa o som correspondente ao led amarelo
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,105 :: 		if(sequencia[jogada] != 1) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
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
	GOTO       L__partida106
	MOVLW      1
	XORWF      R1+0, 0
L__partida106:
	BTFSC      STATUS+0, 2
	GOTO       L_partida44
	CLRF       _situacao+0
L_partida44:
;ProjectMemoryGame.c,106 :: 		}
	GOTO       L_partida45
L_partida43:
;ProjectMemoryGame.c,107 :: 		else if(botao_blue)   { // Verifica se o bot?o pressionado foi o azul
	BTFSS      PORTB+0, 7
	GOTO       L_partida46
;ProjectMemoryGame.c,108 :: 		press_button = 1; // Marca o bot?o como pressionado
	MOVLW      1
	MOVWF      _press_button+0
;ProjectMemoryGame.c,109 :: 		led_blue = 1; // Liga o led azul
	BSF        PORTB+0, 3
;ProjectMemoryGame.c,110 :: 		Sound_Play(120, 300); // Executa o som correspondente ao led azul
	MOVLW      120
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,111 :: 		if(sequencia[jogada] != 2) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
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
	MOVLW      2
	XORWF      R1+0, 0
L__partida107:
	BTFSC      STATUS+0, 2
	GOTO       L_partida47
	CLRF       _situacao+0
L_partida47:
;ProjectMemoryGame.c,112 :: 		}
	GOTO       L_partida48
L_partida46:
;ProjectMemoryGame.c,113 :: 		else if(botao_green)  { // Verifica se o bot?o pressionado foi o verde
	BTFSS      PORTB+0, 6
	GOTO       L_partida49
;ProjectMemoryGame.c,114 :: 		press_button = 1; // Marca o bot?o como pressionado
	MOVLW      1
	MOVWF      _press_button+0
;ProjectMemoryGame.c,115 :: 		led_green = 1; // Liga o led verde
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,116 :: 		Sound_Play(90, 300); // Executa o som correspondente ao led verde
	MOVLW      90
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,117 :: 		if(sequencia[jogada] != 3) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
	MOVF       _jogada+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
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
	MOVLW      3
	XORWF      R1+0, 0
L__partida108:
	BTFSC      STATUS+0, 2
	GOTO       L_partida50
	CLRF       _situacao+0
L_partida50:
;ProjectMemoryGame.c,118 :: 		}
L_partida49:
L_partida48:
L_partida45:
L_partida42:
;ProjectMemoryGame.c,120 :: 		if(press_button) { // Verifica se o bot?o foi solto, garantindo o funcionamento ideal da logica de verifica??o sem repeti??es
	MOVF       _press_button+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida51
;ProjectMemoryGame.c,121 :: 		delay_ms(500); // Garante que um poss?vel mal contato no circuito n?o contabilize o bot?o como sendo pressionado novamente.
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
;ProjectMemoryGame.c,122 :: 		espera = 1; // Marca espera como 1 - true: possibilitando o retorno de verifica??o de bot?o pressionado
	MOVLW      1
	MOVWF      _espera+0
;ProjectMemoryGame.c,123 :: 		}
L_partida51:
;ProjectMemoryGame.c,124 :: 		}
	GOTO       L_partida53
L_partida39:
;ProjectMemoryGame.c,125 :: 		else if(press_button && espera) { // Verifica se o usuario pressionou o bot?o e se ele ainda esta pressionado
	MOVF       _press_button+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
	MOVF       _espera+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_partida56
L__partida76:
;ProjectMemoryGame.c,126 :: 		if(!botao_red && !botao_yellow && !botao_blue && !botao_green) { // Verifica se todos so bot?es esta desligados
	BTFSC      PORTB+0, 4
	GOTO       L_partida59
	BTFSC      PORTB+0, 5
	GOTO       L_partida59
	BTFSC      PORTB+0, 7
	GOTO       L_partida59
	BTFSC      PORTB+0, 6
	GOTO       L_partida59
L__partida75:
;ProjectMemoryGame.c,127 :: 		press_button = 0; // Marca o estado como bot?o nao pressionado
	CLRF       _press_button+0
;ProjectMemoryGame.c,128 :: 		espera = 0; // Desativa a espera pela resposta do bot?o
	CLRF       _espera+0
;ProjectMemoryGame.c,129 :: 		jogada++; // Incrementa +1, se o passo da rodada foi terminado
	INCF       _jogada+0, 1
;ProjectMemoryGame.c,130 :: 		led_red = led_yellow = led_blue = led_green = 0; // Desliga todos os leds
	BCF        PORTB+0, 2
	BTFSC      PORTB+0, 2
	GOTO       L__partida109
	BCF        PORTB+0, 3
	GOTO       L__partida110
L__partida109:
	BSF        PORTB+0, 3
L__partida110:
	BTFSC      PORTB+0, 3
	GOTO       L__partida111
	BCF        PORTB+0, 1
	GOTO       L__partida112
L__partida111:
	BSF        PORTB+0, 1
L__partida112:
	BTFSC      PORTB+0, 1
	GOTO       L__partida113
	BCF        PORTB+0, 0
	GOTO       L__partida114
L__partida113:
	BSF        PORTB+0, 0
L__partida114:
;ProjectMemoryGame.c,131 :: 		}
L_partida59:
;ProjectMemoryGame.c,132 :: 		}
L_partida56:
L_partida53:
;ProjectMemoryGame.c,133 :: 		} // Fim da rodada do jogador
	GOTO       L_partida33
L_partida34:
;ProjectMemoryGame.c,135 :: 		delay_ms(3000);
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
;ProjectMemoryGame.c,136 :: 		step++; // Incrementa mais uma rodada
	INCF       _step+0, 1
;ProjectMemoryGame.c,137 :: 		delay_ms(2000);
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
;ProjectMemoryGame.c,138 :: 		} // Fim da rodada
	GOTO       L_partida17
L_partida18:
;ProjectMemoryGame.c,139 :: 		}
L_end_partida:
	RETURN
; end of _partida

_reseta_led:

;ProjectMemoryGame.c,141 :: 		void reseta_led(){
;ProjectMemoryGame.c,143 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,144 :: 		led_blue = 0;
	BCF        PORTB+0, 3
;ProjectMemoryGame.c,145 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,146 :: 		led_yellow = 0;
	BCF        PORTB+0, 1
;ProjectMemoryGame.c,148 :: 		}
L_end_reseta_led:
	RETURN
; end of _reseta_led

_aguarda_e_gera_semente:

;ProjectMemoryGame.c,151 :: 		void aguarda_e_gera_semente() {
;ProjectMemoryGame.c,152 :: 		unsigned int tempo = 0;
	CLRF       aguarda_e_gera_semente_tempo_L0+0
	CLRF       aguarda_e_gera_semente_tempo_L0+1
;ProjectMemoryGame.c,153 :: 		led_green = 1;
	BSF        PORTB+0, 2
;ProjectMemoryGame.c,154 :: 		while(botao_green == 0) {
L_aguarda_e_gera_semente62:
	BTFSC      PORTB+0, 6
	GOTO       L_aguarda_e_gera_semente63
;ProjectMemoryGame.c,155 :: 		delay_ms(1);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_aguarda_e_gera_semente64:
	DECFSZ     R13+0, 1
	GOTO       L_aguarda_e_gera_semente64
	DECFSZ     R12+0, 1
	GOTO       L_aguarda_e_gera_semente64
;ProjectMemoryGame.c,156 :: 		tempo++;
	INCF       aguarda_e_gera_semente_tempo_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       aguarda_e_gera_semente_tempo_L0+1, 1
;ProjectMemoryGame.c,157 :: 		}
	GOTO       L_aguarda_e_gera_semente62
L_aguarda_e_gera_semente63:
;ProjectMemoryGame.c,159 :: 		led_green = 0;
	BCF        PORTB+0, 2
;ProjectMemoryGame.c,160 :: 		srand(tempo);  // Usa o tempo como semente
	MOVF       aguarda_e_gera_semente_tempo_L0+0, 0
	MOVWF      FARG_srand_x+0
	MOVF       aguarda_e_gera_semente_tempo_L0+1, 0
	MOVWF      FARG_srand_x+1
	CALL       _srand+0
;ProjectMemoryGame.c,161 :: 		}
L_end_aguarda_e_gera_semente:
	RETURN
; end of _aguarda_e_gera_semente

_main:

;ProjectMemoryGame.c,163 :: 		void main() {
;ProjectMemoryGame.c,164 :: 		TRISB = 0b11110000; // RB4 a RB7 como entrada (bot?es) // RB0 a RB3 LEDs
	MOVLW      240
	MOVWF      TRISB+0
;ProjectMemoryGame.c,165 :: 		TRISA = 0b00000010;
	MOVLW      2
	MOVWF      TRISA+0
;ProjectMemoryGame.c,166 :: 		PORTB = 0;
	CLRF       PORTB+0
;ProjectMemoryGame.c,167 :: 		PORTA = 1;
	MOVLW      1
	MOVWF      PORTA+0
;ProjectMemoryGame.c,169 :: 		Sound_Init(&PORTA, 0);
	MOVLW      PORTA+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;ProjectMemoryGame.c,171 :: 		while(1){
L_main65:
;ProjectMemoryGame.c,172 :: 		aguarda_e_gera_semente();  // espera o primeiro clique
	CALL       _aguarda_e_gera_semente+0
;ProjectMemoryGame.c,173 :: 		apresentacao();            // inicia apresenta??o
	CALL       _apresentacao+0
;ProjectMemoryGame.c,174 :: 		delay_ms(5000);
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
;ProjectMemoryGame.c,175 :: 		partida();                 // executa o jogo
	CALL       _partida+0
;ProjectMemoryGame.c,177 :: 		if(situacao) { // vit?ria
	MOVF       _situacao+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main68
;ProjectMemoryGame.c,178 :: 		Sound_Play(70, 300);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,179 :: 		delay_ms(300);
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
;ProjectMemoryGame.c,180 :: 		Sound_Play(100, 300);
	MOVLW      100
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,181 :: 		delay_ms(300);
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
;ProjectMemoryGame.c,182 :: 		Sound_Play(130, 300);
	MOVLW      130
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      44
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,183 :: 		delay_ms(300);
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
;ProjectMemoryGame.c,184 :: 		step = 0, jogada = 0, situacao = 1;
	CLRF       _step+0
	CLRF       _jogada+0
	MOVLW      1
	MOVWF      _situacao+0
;ProjectMemoryGame.c,185 :: 		press_button = 0, espera = 0;
	CLRF       _press_button+0
	CLRF       _espera+0
;ProjectMemoryGame.c,186 :: 		partidas++;
	INCF       _partidas+0, 1
;ProjectMemoryGame.c,187 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,189 :: 		if(partidas >= 30) partidas = 30; // Limita em 30 passos
	MOVLW      30
	SUBWF      _partidas+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main72
	MOVLW      30
	MOVWF      _partidas+0
L_main72:
;ProjectMemoryGame.c,192 :: 		}
	GOTO       L_main73
L_main68:
;ProjectMemoryGame.c,195 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,197 :: 		led_red = 1;
	BSF        PORTB+0, 0
;ProjectMemoryGame.c,198 :: 		Sound_Play(70, 1000);
	MOVLW      70
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;ProjectMemoryGame.c,199 :: 		delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
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
;ProjectMemoryGame.c,200 :: 		led_red = 0;
	BCF        PORTB+0, 0
;ProjectMemoryGame.c,207 :: 		reseta_variavel();
	CALL       _reseta_variavel+0
;ProjectMemoryGame.c,208 :: 		reseta_led();
	CALL       _reseta_led+0
;ProjectMemoryGame.c,211 :: 		}
L_main73:
;ProjectMemoryGame.c,212 :: 		}
	GOTO       L_main65
;ProjectMemoryGame.c,213 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
