#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
#line 14 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
int sequencia[20];
char step = 0, jogada = 0, situacao = 1;
char press_button = 0, espera = 0;
char i;
char partidas = 3;

void reseta_variavel(){
 step = 0, jogada = 0, situacao = 1;
 press_button = 0, espera = 0;
}


void apresentacao() {
 delay_ms(500);

  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 0;  PORTB.RB3  = 0;
 Sound_Play(132, 800); delay_ms(800);

  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(70, 1000); delay_ms(1000);

  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(180, 1200); delay_ms(1200);

  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 0;  PORTB.RB3  = 0;
 delay_ms(450);

 for (i = 0; i < 5; i++) {
  PORTB.RB0  = 1;  PORTB.RB2  = 0;
 Sound_Play(41, 180); delay_ms(180);

  PORTB.RB0  = 0;  PORTB.RB3  = 1;
 Sound_Play(85, 180); delay_ms(180);

  PORTB.RB3  = 0;  PORTB.RB1  = 1;
 Sound_Play(116, 180); delay_ms(180);

  PORTB.RB1  = 0;  PORTB.RB2  = 1;
 Sound_Play(182, 180); delay_ms(180);
 }

 for (i = 0; i < 6; i++) {
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 1;
 Sound_Play(70, 400); delay_ms(100);
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 0;
 delay_ms(300);
 }
}
char j;


void partida() {
 while(step < partidas && situacao) {
 sequencia[step] = rand() % 4;



 for(j = 0; j <= step; j++) {
 switch(sequencia[j]) {
 case 0:  PORTB.RB0  = 1; Sound_Play(182, 300); break;
 case 1:  PORTB.RB1  = 1; Sound_Play(150, 300); break;
 case 2:  PORTB.RB3  = 1; Sound_Play(120, 300); break;
 case 3:  PORTB.RB2  = 1; Sound_Play(90, 300); break;
 }
 delay_ms(1000);
  PORTB.RB0  =  PORTB.RB1  =  PORTB.RB2  =  PORTB.RB3  = 0;
 delay_ms(500);
 }




 delay_ms(3000);
 jogada = 0;
 espera = 0;

 while(jogada <= step && situacao) {

 if(!press_button && !espera) {


 if( PORTB.RB4 ) {
 press_button = 1;
  PORTB.RB0  = 1;
 Sound_Play(182, 300);
 if(sequencia[jogada] != 0) situacao = 0;
 }
 else if( PORTB.RB5 ) {
 press_button = 1;
  PORTB.RB1  = 1;
 Sound_Play(150, 300);
 if(sequencia[jogada] != 1) situacao = 0;
 }
 else if( PORTB.RB7 ) {
 press_button = 1;
  PORTB.RB3  = 1;
 Sound_Play(120, 300);
 if(sequencia[jogada] != 2) situacao = 0;
 }
 else if( PORTB.RB6 ) {
 press_button = 1;
  PORTB.RB2  = 1;
 Sound_Play(90, 300);
 if(sequencia[jogada] != 3) situacao = 0;
 }

 if(press_button) {
 delay_ms(500);
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

 delay_ms(3000);
 step++;
 delay_ms(2000);
 }
}

void reseta_led(){

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
 delay_ms(5000);
 partida();

 if(situacao) {
 Sound_Play(70, 300);
 delay_ms(300);
 Sound_Play(100, 300);
 delay_ms(300);
 Sound_Play(130, 300);
 delay_ms(300);
 step = 0, jogada = 0, situacao = 1;
 press_button = 0, espera = 0;
 partidas++;
 reseta_led();

 if(partidas >= 30) partidas = 30;


 }
 else {

 reseta_led();

  PORTB.RB0  = 1;
 Sound_Play(70, 1000);
 delay_ms(1500);
  PORTB.RB0  = 0;






 reseta_variavel();
 reseta_led();


 }
 }
}
