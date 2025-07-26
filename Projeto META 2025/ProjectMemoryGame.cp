#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto META 2025/ProjectMemoryGame.c"
#line 14 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto META 2025/ProjectMemoryGame.c"
int apresent = 0;
int i;


void main() {
 TRISB = 0b11110000;
 TRISA = 0b00000010;

 PORTB = 0;
 PORTA = 0;

 while(1)
 {

 if (apresent == 0){

 apresent = 1;

 for (i = 0; i < 3; i++){

  PORTB.RB0  = 1;
  PORTB.RB1  = 1;
  PORTB.RB2  = 1;
  PORTB.RB3  = 1;

 delay_ms(1000);

  PORTB.RB0  = 0;
  PORTB.RB1  = 0;
  PORTB.RB2  = 0;
  PORTB.RB3  = 0;
 delay_ms(1000);

 }

 for (i = 0; i < 5; i++){

  PORTB.RB0  = 1;
 delay_ms(1000);

  PORTB.RB0  = 0;
  PORTB.RB3  = 1;
 delay_ms(1000);

  PORTB.RB3  = 0;
  PORTB.RB1  = 1;
 delay_ms(1000);

  PORTB.RB1  = 0;
  PORTB.RB2  = 1;
 delay_ms(1000);

  PORTB.RB2  = 0;

 }

  PORTB.RB0  = 1;
  PORTB.RB1  = 1;
  PORTB.RB2  = 1;
  PORTB.RB3  = 1;

 delay_ms(2000);

  PORTB.RB0  = 0;
  PORTB.RB1  = 0;
  PORTB.RB2  = 0;
  PORTB.RB3  = 0;

 delay_ms(4000);


 }




 }
}
