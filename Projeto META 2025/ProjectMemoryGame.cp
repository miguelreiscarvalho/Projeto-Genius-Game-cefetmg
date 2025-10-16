#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
#line 16 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
int sequencia[20];
char step = 0, jogada = 0, situacao = 1;
char press_button = 0, espera = 0;
char i;
char partidas = 3;

void reseta_variavel() {
 step = 0; jogada = 0; situacao = 1;
 press_button = 0; espera = 0;
}


void apresentacao() {
 delay_ms(80);

  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 0;  PORTB.RB3  = 0;
 Sound_Play(330, 140); delay_ms(140);

  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(175, 180); delay_ms(180);

  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(450, 200); delay_ms(200);

  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 0;  PORTB.RB3  = 0;
 delay_ms(80);

 for (i = 0; i < 5; i++) {
  PORTB.RB0  = 1;  PORTB.RB2  = 0;
 Sound_Play(103, 35); delay_ms(35);

  PORTB.RB0  = 0;  PORTB.RB3  = 1;
 Sound_Play(212, 35); delay_ms(35);

  PORTB.RB3  = 0;  PORTB.RB1  = 1;
 Sound_Play(290, 35); delay_ms(35);

  PORTB.RB1  = 0;  PORTB.RB2  = 1;
 Sound_Play(455, 35); delay_ms(35);
 }

 for (i = 0; i < 6; i++) {
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 1;
 Sound_Play(175, 80); delay_ms(20);
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 0;
 delay_ms(60);
 }
}



char j;


void partida() {
 while(step < partidas && situacao) {
 sequencia[step] = rand() % 4;


 for(j = 0; j <= step; j++) {
 switch(sequencia[j]) {
 case 0:  PORTB.RB0  = 1; Sound_Play(455, 80); break;
 case 1:  PORTB.RB1  = 1; Sound_Play(375, 80); break;
 case 2:  PORTB.RB3  = 1; Sound_Play(300, 80); break;
 case 3:  PORTB.RB2  = 1; Sound_Play(225, 80); break;
 }
 delay_ms(480);
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 0;
 delay_ms(360);
 }

 delay_ms(700);
 jogada = 0;
 espera = 0;


 while(jogada <= step && situacao) {
 if(!press_button && !espera) {
 if( PORTB.RB4 ) {
 press_button = 1;
  PORTB.RB0  = 1;
 Sound_Play(455, 80);
 if(sequencia[jogada] != 0) situacao = 0;
 }
 else if( PORTB.RB5 ) {
 press_button = 1;
  PORTB.RB1  = 1;
 Sound_Play(375, 80);
 if(sequencia[jogada] != 1) situacao = 0;
 }
 else if( PORTB.RB7 ) {
 press_button = 1;
  PORTB.RB3  = 1;
 Sound_Play(300, 80);
 if(sequencia[jogada] != 2) situacao = 0;
 }
 else if( PORTB.RB6 ) {
 press_button = 1;
  PORTB.RB2  = 1;
 Sound_Play(225, 80);
 if(sequencia[jogada] != 3) situacao = 0;
 }

 if(press_button) {
 delay_ms(120);
 espera = 1;
 }
 }
 else if(press_button && espera) {
 if(! PORTB.RB4  && ! PORTB.RB5  && ! PORTB.RB7  && ! PORTB.RB6 ) {
 press_button = 0;
 espera = 0;
 jogada++;
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB3  =  PORTB.RB2  = 0;
 }
 }
 }

 delay_ms(700);
 step++;
 delay_ms(480);
 }
}


void reseta_led() {
  PORTB.RB0  = 0;
  PORTB.RB3  = 0;
  PORTB.RB2  = 0;
  PORTB.RB1  = 0;
}

void aguarda_e_gera_semente() {
 unsigned int tempo = 0;
  PORTB.RB2  = 1;
 while( PORTB.RB6  == 0) {
 delay_ms(1);
 tempo++;
 }
  PORTB.RB2  = 0;
 srand(tempo);
}

void main() {
 TRISB = 0b11110000;
 TRISA = 0b00000010;
 PORTB = 0;
 PORTA = 1;
 Sound_Init(&PORTA, 0);

 while(1){
 aguarda_e_gera_semente();
 apresentacao();
 delay_ms(400);

 partida();

 if(situacao) {
 Sound_Play(300, 60);
 delay_ms(60);
 Sound_Play(430, 60);
 delay_ms(60);
 Sound_Play(620, 60);
 delay_ms(60);

 step = 0; jogada = 0; situacao = 1;
 press_button = 0; espera = 0;
 partidas++;
 reseta_led();

 if(partidas >= 30) partidas = 30;
 }
 else {
 reseta_led();
  PORTB.RB0  = 1;
 Sound_Play(300, 250);
 delay_ms(250);
  PORTB.RB0  = 0;
 reseta_variavel();
 reseta_led();
 }
 }
}
