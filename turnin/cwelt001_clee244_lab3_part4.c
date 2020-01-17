/*	Author: cwelt001
 *  Partner(s) Name: Christian Lee
 *	Lab Section:
 *	Assignment: Lab #3  Exercise #4
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
unsigned char SetBit(unsigned char x, unsigned char k, unsigned char b) {
	return (b ? x | (0x01 << k) : x & ~(0x01 << k));
}

int main(void) {
    /* Insert DDR and PORT initializations */
	DDRA = 0x00; PORTA = 0xFF; // DDR: (1 for output, 0 for input)
	DDRB = 0xFF; PORTB = 0x00;
	DDRC = 0xFF; PORTC = 0x00; // PORT used for writing, PIN used for reading
	
	unsigned char tmpC = 0x00;
	unsigned char tmpB = 0x00;
	unsigned char i;
    
    /* Insert your solution below */
    while (1) {
		tmpB = 0x00;
		tmpC = 0x00;
		
		for(i = 0; i < 4; i++){
			if(GetBit(PINA,i)){
				tmpC = SetBit(tmpC, i+4, 1);
			}
		}
		for(i = 4; i < 8; i++){
			if(GetBit(PINA,i)){
				tmpB = SetBit(tmpB, i-4, 1);
			}
		}
		PORTB = tmpB;
		PORTC = tmpC;
    }
    return 1;
}
