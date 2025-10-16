void main() {
    TRISB = 0b11110000; // RB4-RB7: entrada botões; RB0-RB3: saída LEDs
    PORTB = 0;

    while(1) {
        // botão RB4 (vermelho) acende LED RB0
        if(PORTB.F4 == 1) PORTB.F0 = 1;
        else PORTB.F0 = 0;

        // botão RB5 (amarelo) acende LED RB1
        if(PORTB.F5 == 1) PORTB.F1 = 1;
        else PORTB.F1 = 0;

        // botão RB6 (verde) acende LED RB2
        if(PORTB.F6 == 1) PORTB.F2 = 1;
        else PORTB.F2 = 0;

        // botão RB7 (azul) acende LED RB3
        if(PORTB.F7 == 1) PORTB.F3 = 1;
        else PORTB.F3 = 0;
    }
}
