#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/Testes/Teste Buzzer/MyProject.c"




void main() {
 TRISA = 0b00000010;
 PORTA = 0;

 Sound_Init(&PORTA, 0);

 while(1) {

 Sound_Play(100, 300);
 delay_ms(500);
 Sound_Play(200, 300);
 delay_ms(500);
 Sound_Play(400, 300);
 delay_ms(500);
 Sound_Play(800, 300);
 delay_ms(1000);
 }
}
