// LEDS
#define led_red     PORTB.RB0
#define led_yellow  PORTB.RB1
#define led_green   PORTB.RB2
#define led_blue    PORTB.RB3

// Botões
#define botao_red     PORTB.RB4
#define botao_yellow  PORTB.RB5
#define botao_green   PORTB.RB6
#define botao_blue    PORTB.RB7

// Variáveis
int sequencia[20];
int step = 0, jogada = 0, situacao = 1;
char press_button = 0, espera = 0;
char i;
char partidas = 3;

void reseta_variavel(){
    step = 0, jogada = 0, situacao = 1;
    press_button = 0, espera = 0;
}

// Apresentação inicial
void apresentacao() {
    delay_ms(500);

    led_red = 1; led_yellow = 1; led_green = 0; led_blue = 0;
    Sound_Play(132, 800); delay_ms(800);

    led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
    Sound_Play(70, 1000); delay_ms(1000);

    led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
    Sound_Play(180, 1200); delay_ms(1200);

    led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
    delay_ms(450);

    for (i = 0; i < 5; i++) {
        led_red = 1; led_green = 0;
        Sound_Play(41, 180); delay_ms(180);

        led_red = 0; led_blue = 1;
        Sound_Play(85, 180); delay_ms(180);

        led_blue = 0; led_yellow = 1;
        Sound_Play(116, 180); delay_ms(180);

        led_yellow = 0; led_green = 1;
        Sound_Play(182, 180); delay_ms(180);
    }

    for (i = 0; i < 6; i++) {
        led_red = led_yellow = led_green = led_blue = 1;
        Sound_Play(70, 400); delay_ms(100);
        led_red = led_yellow = led_green = led_blue = 0;
        delay_ms(300);
    }
}
char j;

// Jogo
void partida() {
    while(step < partidas && situacao) {
        sequencia[step] = rand() % 4;

        for(j = 0; j <= step; j++) {
            switch(sequencia[j]) {
                case 0: led_red = 1; Sound_Play(182, 300); break;
                case 1: led_yellow = 1; Sound_Play(150, 300); break;
                case 2: led_blue = 1; Sound_Play(120, 300); break;
                case 3: led_green = 1; Sound_Play(90, 300); break;
            }
            delay_ms(1000);
            led_red = led_yellow = led_green = led_blue = 0;
            delay_ms(500);
        }

        delay_ms(3000);
        jogada = 0;
        espera = 0;

        while(jogada <= step && situacao) {
            if(!press_button && !espera) {
                if(botao_red)    { press_button = 1; led_red = 1; Sound_Play(182, 300); if(sequencia[jogada] != 0) situacao = 0; }
                else if(botao_yellow) { press_button = 1; led_yellow = 1; Sound_Play(150, 300); if(sequencia[jogada] != 1) situacao = 0; }
                else if(botao_blue)   { press_button = 1; led_blue = 1; Sound_Play(120, 300); if(sequencia[jogada] != 2) situacao = 0; }
                else if(botao_green)  { press_button = 1; led_green = 1; Sound_Play(90, 300); if(sequencia[jogada] != 3) situacao = 0; }

                if(press_button) { delay_ms(500); espera = 1; }
            }
            else if(press_button && espera) {
                if(!botao_red && !botao_yellow && !botao_blue && !botao_green) {
                    press_button = 0;
                    espera = 0;
                    jogada++;
                    led_red = led_yellow = led_blue = led_green = 0;
                }
            }
        }

        delay_ms(3000);
        step++;
        delay_ms(2000);
    }
}

void reseta_led(){

     led_red = 0;
     led_blue = 0;
     led_green = 0;
     led_yellow = 0;

}

// Geração da semente aleatória com base no tempo
void aguarda_e_gera_semente() {
    unsigned int tempo = 0;
    led_red = 1;
    while(botao_red == 0) {
        delay_ms(1);
        tempo++;
    }

    led_red = 0;
    srand(tempo);  // Usa o tempo como semente
}

void main() {
    TRISB = 0b11110000; // RB4 a RB7 como entrada (botões) // RB0 a RB3 LEDs
    TRISA = 0b00000010;
    PORTB = 0;
    PORTA = 1;

    Sound_Init(&PORTA, 0);

    while(1){
      aguarda_e_gera_semente();  // espera o primeiro clique
      apresentacao();            // inicia apresentação
      delay_ms(5000);
      partida();                 // executa o jogo

      if(situacao) { // vitória
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
          
          if(partidas >= 30) partidas = 30; // Limita em 30 passos


      }
      else { // derrota
          Sound_Play(70, 1000);
          reseta_variavel();
          reseta_led();


      }
    }
}