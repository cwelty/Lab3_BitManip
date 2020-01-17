/*	Author: cwelt001
 *  Partner(s) Name: Christian Lee
 *	Lab Section:
 *	Assignment: Lab #3  Exercise #1
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

unsigned char GetBit(unsigned char x, unsigned char k) {
	return ((x & (0x01 << k)) != 0);
}

int main(void) {
    /* Insert DDR and PORT initializations */
	DDRA = 0x00; PORTA = 0xFF; // DDR: (1 for output, 0 for input)
	DDRB = 0x00; PORTB = 0xFF; // PORT used for writing, PIN used for reading
	DDRC = 0xFF; PORTC = 0x00;
	
	unsigned char count;
	unsigned char i;
    /* Insert your solution below */
    while (1) {
		count = 0;
		for(i = 0; i < 8; i++) {
			if(GetBit(PINA, i)) {
				count++;	
			}
			if(GetBit(PINB, i)) {
				count++;
			}
		}
		PORTC = count;
    }
    return 1;
}
