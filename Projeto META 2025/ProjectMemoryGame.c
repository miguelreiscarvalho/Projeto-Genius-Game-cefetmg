#define _XTAL_FREQ 8000000

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
int press_button = 0, espera = 0;
int i;
int partidas = 3;

void reseta_variavel() {
    step = 0; jogada = 0; situacao = 1;
    press_button = 0; espera = 0;
}

// Apresentação inicial
void apresentacao() {
    delay_ms(80);

    led_red = 1; led_yellow = 1; led_green = 0; led_blue = 0;
    Sound_Play(930, 140); delay_ms(140);

    led_red = 0; led_yellow = 0; led_green = 1; led_blue = 1;
    Sound_Play(775, 180); delay_ms(180);

    led_red = 1; led_yellow = 1; led_green = 1; led_blue = 1;
    Sound_Play(1050, 200); delay_ms(200);

    led_red = 0; led_yellow = 0; led_green = 0; led_blue = 0;
    delay_ms(80);

    for (i = 0; i < 5; i++) {
        led_red = 1; led_green = 0;
        Sound_Play(703, 35); delay_ms(35);

        led_red = 0; led_blue = 1;
        Sound_Play(812, 35); delay_ms(35);

        led_blue = 0; led_yellow = 1;
        Sound_Play(890, 35); delay_ms(35);

        led_yellow = 0; led_green = 1;
        Sound_Play(1055, 35); delay_ms(35);
    }

    for (i = 0; i < 6; i++) {
        led_red = led_yellow = led_green = led_blue = 1;
        Sound_Play(775, 80); delay_ms(20);
        led_red = led_yellow = led_green = led_blue = 0;
        delay_ms(60);
    }
}



char j;

// Jogo
void partida() {
    while(step < partidas && situacao) {
        sequencia[step] = rand() % 4;

        // Mostra sequência atual
        for(j = 0; j <= step; j++) {
            switch(sequencia[j]) {
                case 0: led_red = 1;    Sound_Play(1055, 80);  break; // 182 * 2.5
                case 1: led_yellow = 1; Sound_Play(975, 80);  break; // 150 * 2.5
                case 2: led_blue = 1;   Sound_Play(900, 80);  break; // 120 * 2.5
                case 3: led_green = 1;  Sound_Play(825, 80);  break; // 90 * 2.5
            }
            delay_ms(480); // 800 ? 480
            led_red = led_yellow = led_green = led_blue = 0;
            delay_ms(360); // 600 ? 360
        }

        delay_ms(700); // 1200 ? 700
        jogada = 0;
        espera = 0;

        // Fase de leitura do jogador
        while(jogada <= step && situacao) {
            if(!press_button && !espera) {
                if(botao_red) {
                    press_button = 1;
                    led_red = 1;
                    Sound_Play(1055, 80);
                    if(sequencia[jogada] != 0) situacao = 0;
                }
                else if(botao_yellow) {
                    press_button = 1;
                    led_yellow = 1;
                    Sound_Play(975, 80);
                    if(sequencia[jogada] != 1) situacao = 0;
                }
                else if(botao_blue) {
                    press_button = 1;
                    led_blue = 1;
                    Sound_Play(900, 80);
                    if(sequencia[jogada] != 2) situacao = 0;
                }
                else if(botao_green) {
                    press_button = 1;
                    led_green = 1;
                    Sound_Play(825, 80);
                    if(sequencia[jogada] != 3) situacao = 0;
                }

                if(press_button) {
                    delay_ms(120); // 200 ? 120
                    espera = 1;
                }
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

        delay_ms(700); // 1200 ? 700
        step++;
        delay_ms(480); // 800 ? 480
    }
}


void reseta_led() {
    led_red = 0;
    led_blue = 0;
    led_green = 0;
    led_yellow = 0;
}

void aguarda_e_gera_semente() {
    unsigned int tempo = 0;
    led_green = 1;
    while(botao_green == 0) {
        delay_ms(1);
        tempo++;
    }
    led_green = 0;
    srand(tempo);
}

void main() {
    TRISB = 0b11110000;  // RB4–RB7 como entrada, RB0–RB3 como saída (LEDs)
    TRISA = 0b00000010;  // RA1 como entrada, RA0 como saída (buzzer)
    PORTB = 0;
    PORTA = 1;
    Sound_Init(&PORTA, 0);
    

    while(1){
        aguarda_e_gera_semente();     // Gera semente randômica
        apresentacao();               // Animação inicial com delays ajustados
        delay_ms(400);                // Antes: 2000 ? Ajustado para 700ms

        partida();                    // Rodada principal já ajustada

        if(situacao) {                // Jogador venceu rodada
            Sound_Play(900, 60);       // Antes: 120ms ? Ajustado para resposta rápida
            delay_ms(60);
            Sound_Play(1030, 60);
            delay_ms(60);
            Sound_Play(1220, 60);
            delay_ms(60);

            step = 0; jogada = 0; situacao = 1;
            press_button = 0; espera = 0;
            partidas++;
            reseta_led();

            if(partidas >= 30) partidas = 30;
        }
        else {                        // Jogador errou rodada
            reseta_led();
            led_red = 1;
            Sound_Play(900, 250);      // Antes: 400ms ? Ajustado para 180ms
            delay_ms(250);            // Antes: 600ms ? Ajustado para 250ms
            led_red = 0;
            reseta_variavel();
            reseta_led();
        }
    }
}