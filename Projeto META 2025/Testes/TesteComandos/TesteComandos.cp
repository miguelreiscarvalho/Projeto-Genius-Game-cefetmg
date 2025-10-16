#line 1 "D:/CEFET/2025/Programação Aplicada A Microcontroladores/Projeto-Genius-Game-cefetmg/Projeto META 2025/Testes/TesteComandos/TesteComandos.c"
void main() {
 TRISB = 0b11110000;
 PORTB = 0;

 while(1) {

 if(PORTB.F4 == 1) PORTB.F0 = 1;
 else PORTB.F0 = 0;


 if(PORTB.F5 == 1) PORTB.F1 = 1;
 else PORTB.F1 = 0;


 if(PORTB.F6 == 1) PORTB.F2 = 1;
 else PORTB.F2 = 0;


 if(PORTB.F7 == 1) PORTB.F3 = 1;
 else PORTB.F3 = 0;
 }
}
