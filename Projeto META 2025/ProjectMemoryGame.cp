#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
#line 17 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/ProjectMemoryGame.c"
int apresent = 0;
int i;


void main() {
 TRISB = 0b11110000;
 TRISA = 0b00000010;

 PORTB = 0;
 PORTA = 0;

 Sound_Init(&PORTA, 0);



 while(1)
 {

 if (apresent == 0){

 apresent = 1;
 delay_ms(500);



  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(132, 300);
 delay_ms(1000);
 Sound_Play(70, 300);
 delay_ms(1200);
 Sound_Play(180, 300);
 delay_ms(1400);
  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 0;  PORTB.RB3  = 0;

 delay_ms(450);


 for (i = 0; i < 5; i++){


  PORTB.RB0  = 1;
 Sound_Play(41, 200);

 delay_ms(80);

 Sound_Play(0, 0);

 delay_ms(80);

  PORTB.RB0  = 0;
  PORTB.RB3  = 1;
 Sound_Play(85, 200);

 delay_ms(80);

 Sound_Play(0, 0);

 delay_ms(80);

  PORTB.RB3  = 0;
  PORTB.RB1  = 1;
 Sound_Play(116, 200);

 delay_ms(80);

 Sound_Play(0, 0);

 delay_ms(80);

  PORTB.RB1  = 0;
  PORTB.RB2  = 1;
 Sound_Play(182, 300);

 delay_ms(80);

 Sound_Play(0, 0);

 delay_ms(80);

  PORTB.RB2  = 0;

 }

 for (i = 0; i < 6; i++){


  PORTB.RB0  = 1;  PORTB.RB1  = 1;  PORTB.RB2  = 1;  PORTB.RB3  = 1;
 Sound_Play(70, 300);

 delay_ms(100);

  PORTB.RB0  = 0;  PORTB.RB1  = 0;  PORTB.RB2  = 0;  PORTB.RB3  = 0;

 delay_ms(300);



 }




 }




 }
}
