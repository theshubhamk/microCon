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
		unsigned int mask = 0, mask1 = 0x80, mask2 = 0x01, mask3 = 0;
		int j;
		for(j = 0; j < 16;j++)
		{
			if(j < 7)
			{
				PORTB = mask;
				mask = mask | mask1;
				mask1 = mask1 >> 1;
				for(i = 50000;i--;);
				//for(i = 50000;i--;);
			}
			else if(j == 7)
			{
				PORTB = ON;
			}
			else
			{
				PORTB = mask3;
				mask3 = mask3 | mask2;
				mask2 = mask2 << 1;
				for(i = 50000;i--;);
				//for(i = 50000;i--;);
			}
		}
		//delay


	}
}