#include "common.h"

void init_config(void)
{
	//configure PORTB as output
	TRISB = 0x00;
	//configure PORTB as digital port
	ADCON1 = 0x00;
	//configure LATB with 0x55
	LATB = 0x55;
	//initially turn off all LED's
	PORTB = 0x00;
}

unsigned short i;
void main(void)
{
	init_config();
	while(1)
	{
		//turn on all LED's
		PORTB = ON;
		//delay
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		//turn off all LED's
		PORTB = OFF;
		//delay
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		for(i = 50000;i--;);
		for(i = 50000;i--;);
	}
}