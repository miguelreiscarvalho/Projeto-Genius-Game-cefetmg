// LEDS
#define led_red     PORTB.RB0
#define led_yellow  PORTB.RB1
#define led_green   PORTB.RB2
#define led_blue    PORTB.RB3

// Bot?es
#define botao_red     PORTB.RB4
#define botao_yellow  PORTB.RB5
#define botao_green   PORTB.RB6
#define botao_blue    PORTB.RB7

// Vari?veis
int sequencia[20];
char step = 0, jogada = 0, situacao = 1;
char press_button = 0, espera = 0;
char i;
char partidas = 3;

void reseta_variavel(){
    step = 0, jogada = 0, situacao = 1;
    press_button = 0, espera = 0;
}

// Apresenta??o inicial
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
    while(step < partidas && situacao) {   // Termina quando as rodadas terminam ou quando o jogador perder
        sequencia[step] = rand() % 4; // Gera??o de n?mero aleat?rio do ultimo passo da rodada atual, limitada em 4: 0 - 3;


        // Gera??o de sequ?ncia da rodada atual.
        for(j = 0; j <= step; j++) { // Loop que exibe todos os leds sorteados em cada passo da rodada
            switch(sequencia[j]) { // Recebe o valor correspondente ao led sorteado no passo atual
                case 0: led_red = 1; Sound_Play(182, 300); break; // Liga o led vermelho se ele for o sorteado no passo atual
                case 1: led_yellow = 1; Sound_Play(150, 300); break; // Liga o led yellow se ele for o sorteado no passo atual
                case 2: led_blue = 1; Sound_Play(120, 300); break; // Liga o led blue se ele for o sorteado no passo atual
                case 3: led_green = 1; Sound_Play(90, 300); break; // Liga o led green se ele for o sorteado no passo atual
            }
            delay_ms(1000); //  Mant?m os leds ligados por 1 segundo, OBS: Alterar isso poder influenciar no par?metro de dificuldade
            led_red = led_yellow = led_green = led_blue = 0; // Desliga todos os leds.
            delay_ms(500); // Desliga os leds e mant?m os mesmos desligados por 0.5s.
        } // Fim da exibi??o da rodada atual


        // Jogador
        // Recebe as entradas realizadas pelo jogador; Bot?es os quais ele apertou
        delay_ms(3000); // Aguarda um periodo de 3s ap?s a exibi??o da sequ?ncia da rodada atual
        jogada = 0; // Demarca qual passo da rodada estamos verificando se o jogador acertou
        espera = 0; // VARI?VEL DE SEGURAN?A: Garante que s? iremos passar para o pr?ximo passo se o usu?rio soltar o bot?o

        while(jogada <= step && situacao) { // Termina quando todos os passos da rodada s?o executados ou quando o jogador erra a sequ?ncia

            if(!press_button && !espera) { // Entra quando o jogador aperta o bot?o e s? entra aqui de novo, quando o us?ario soltar o bot?o
                                           // Garante que n?o seja contabilizado mais de um click no bot?o.

                if(botao_red)    { // Verifica se o bot?o pressionado foi o vermelho
                    press_button = 1; // Marca o bot?o como pressionado
                    led_red = 1; // Liga o led vermelho
                    Sound_Play(182, 300); // Executa o som correspondente ao led vermelho
                    if(sequencia[jogada] != 0) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
                }
                else if(botao_yellow) { // Verifica se o bot?o pressionado foi o amarelho
                    press_button = 1; // Marca o bot?o como pressionado
                    led_yellow = 1; // Liga o led amarelo
                    Sound_Play(150, 300); // Executa o som correspondente ao led amarelo
                    if(sequencia[jogada] != 1) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
                }
                else if(botao_blue)   { // Verifica se o bot?o pressionado foi o azul
                    press_button = 1; // Marca o bot?o como pressionado
                    led_blue = 1; // Liga o led azul
                    Sound_Play(120, 300); // Executa o som correspondente ao led azul
                    if(sequencia[jogada] != 2) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
                }
                else if(botao_green)  { // Verifica se o bot?o pressionado foi o verde
                    press_button = 1; // Marca o bot?o como pressionado
                    led_green = 1; // Liga o led verde
                    Sound_Play(90, 300); // Executa o som correspondente ao led verde
                    if(sequencia[jogada] != 3) situacao = 0; // Verifica se o jogador errou o bot?o do passo atual, se sim a rodada termina - GAME OVER
                }

                if(press_button) { // Verifica se o bot?o foi solto, garantindo o funcionamento ideal da logica de verifica??o sem repeti??es
                    delay_ms(500); // Garante que um poss?vel mal contato no circuito n?o contabilize o bot?o como sendo pressionado novamente.
                    espera = 1; // Marca espera como 1 - true: possibilitando o retorno de verifica??o de bot?o pressionado
                }
            }
            else if(press_button && espera) { // Verifica se o usuario pressionou o bot?o e se ele ainda esta pressionado
                if(!botao_red && !botao_yellow && !botao_blue && !botao_green) { // Verifica se todos so bot?es esta desligados
                    press_button = 0; // Marca o estado como bot?o nao pressionado
                    espera = 0; // Desativa a espera pela resposta do bot?o
                    jogada++; // Incrementa +1, se o passo da rodada foi terminado
                    led_red = led_yellow = led_blue = led_green = 0; // Desliga todos os leds
                }
            }
        } // Fim da rodada do jogador

        delay_ms(3000);
        step++; // Incrementa mais uma rodada
        delay_ms(2000);
    } // Fim da rodada
}

void reseta_led(){

     led_red = 0;
     led_blue = 0;
     led_green = 0;
     led_yellow = 0;

}

// Gera??o da semente aleat?ria com base no tempo
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
    TRISB = 0b11110000; // RB4 a RB7 como entrada (bot?es) // RB0 a RB3 LEDs
    TRISA = 0b00000010;
    PORTB = 0;
    PORTA = 1;

    Sound_Init(&PORTA, 0);

    while(1){
      aguarda_e_gera_semente();  // espera o primeiro clique
      apresentacao();            // inicia apresenta??o
      delay_ms(5000);
      partida();                 // executa o jogo

      if(situacao) { // vit?ria
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