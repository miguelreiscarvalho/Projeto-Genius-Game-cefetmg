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

     Sound_Init(&PORTA, 0);

     //tocar_musica();

     while(1)
     {
     
         if (apresent == 0){

            apresent = 1;
            delay_ms(500);


              // Parte 1: acordes com todos os LEDs
              led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
              Sound_Play(132, 300);
              delay_ms(1000);
              Sound_Play(70, 300);
              delay_ms(1200);
              Sound_Play(180, 300);
              delay_ms(1400);
              led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;

              delay_ms(450);

            
            for (i = 0; i < 5; i++){
            

                led_red = 1;
                Sound_Play(41, 200);
                
                delay_ms(80);

                Sound_Play(0, 0);

                delay_ms(80);

                led_red = 0;
                led_blue = 1;
                Sound_Play(85, 200);

                delay_ms(80);

                Sound_Play(0, 0);

                delay_ms(80);

                led_blue = 0;
                led_yellow = 1;
                Sound_Play(116, 200);

                delay_ms(80);

                Sound_Play(0, 0);

                delay_ms(80);

                led_yellow = 0;
                led_green = 1;
                Sound_Play(182, 300);

                delay_ms(80);

                Sound_Play(0, 0);

                delay_ms(80);

                led_green = 0;

            }

            for (i = 0; i < 6; i++){

               // Parte 1: acordes com todos os LEDs
               led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
               Sound_Play(70, 300);
               
               delay_ms(100);
               
               led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
               
               delay_ms(300);



            }




         }
         
     
     
     
     } // fim do while
}