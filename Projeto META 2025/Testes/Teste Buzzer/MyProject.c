// ======================================
// TESTE DE BUZZER - PIC16F628A
// ======================================

void main() {
    TRISA = 0b00000010;   // RA0 como saída (buzzer), RA1 entrada (reserva)
    PORTA = 0;

    Sound_Init(&PORTA, 0);  // Inicializa som no pino RA0

    while(1) {
        // Sequência de tons para teste
        Sound_Play(100, 300);  // 100 Hz
        delay_ms(500);
        Sound_Play(200, 300);  // 200 Hz
        delay_ms(500);
        Sound_Play(400, 300);  // 400 Hz
        delay_ms(500);
        Sound_Play(800, 300);  // 800 Hz
        delay_ms(1000);
    }
}
