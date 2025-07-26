// Declaração de LEDS do Jogo
#define led_red PORTB.RB0 // LED Vermelho na Saída B0
#define led_yellow PORTB.RB1 // LED Aaarelo na Saída B0
#define led_green PORTB.RB2 // LED Verde na Saída B0
#define led_blue PORTB.RB3 // LED Azul na Saída B0

// Declaração de Botões do Jogo
#define botao_red PORTB.RB4 // Botão do LED Vermelho na Entrada B4
#define botao_yellow PORTB.RB5 // Botão do LED Amarelo na Entrada B5
#define botao_green PORTB.RB6 // Botão do LED Verde na Entrada B6
#define botao_blue PORTB.RB7 // Botão do LED Azul na Entrada B7


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

               led_red = 1; // Comando em Hexadecimal
               led_yellow = 1; // Comando em Hexadecimal
               led_green = 1; // Comando em Hexadecimal
               led_blue = 1; // Comando em Hexadecimal

               delay_ms(1000);

               led_red = 0; // Comando em Hexadecimal
               led_yellow = 0; // Comando em Hexadecimal
               led_green = 0; // Comando em Hexadecimal
               led_blue = 0; // Comando em Hexadecimal
               delay_ms(1000);
               
            }
            
            for (i = 0; i < 5; i++){
            
                led_red = 1; // Comando em Hexadecimal
                delay_ms(1000);

                led_red = 0; // Comando em Hexadecimal
                led_blue = 1; // Comando em Hexadecimal
                delay_ms(1000);

                led_blue = 0; // Comando em Hexadecimal
                led_yellow = 1; // Comando em Hexadecimal
                delay_ms(1000);

                led_yellow = 0; // Comando em Hexadecimal
                led_green = 1; // Comando em Hexadecimal
                delay_ms(1000);

                led_green = 0; // Comando em Hexadecimal

            }
            
            led_red = 1; // Comando em Hexadecimal
            led_yellow = 1; // Comando em Hexadecimal
            led_green = 1; // Comando em Hexadecimal
            led_blue = 1; // Comando em Hexadecimal

            delay_ms(2000);

            led_red = 0; // Comando em Hexadecimal
            led_yellow = 0; // Comando em Hexadecimal
            led_green = 0; // Comando em Hexadecimal
            led_blue = 0; // Comando em Hexadecimal
            
            delay_ms(4000);


         }
         
     
     
     
     } // fim do while
}