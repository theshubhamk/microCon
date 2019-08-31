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
void pattern1()
{
	init_config();
	//turn on all LED's
	//PORTB = ON;
	static unsigned int mask = 0, mask1 = 0x80, mask2 = 0x01, mask3 = 0;
	static unsigned int j;
	static unsigned short r, s;
	//for(j = 0; j < 16;j++)
	{
		if(j == 17)
		{
			j = 0;
			mask = 0;
			mask1 = 0x80;
			mask2 = 0x01;
			mask3 = 0;
		}
		if(j < 9)
		{
			PORTB = mask;
			if(r == 5000 || r > 5000)
			{
				mask = mask | mask1;
				mask1 = mask1 >> 1;
				j++;
				r = 0;
			}
			else
			{
				r++;
			}
			//for(i = 50000;i--;);
			//for(i = 50000;i--;);
		}
		else if(j == 7)
		{
			PORTB = ON;
			j++;
		}
		else
		{
			PORTB = mask3;
			if(s == 5000 || s > 5000)
			{
				mask3 = mask3 | mask2;
				mask2 = mask2 << 1;
				j++;
				s = 0;
			}
			else
			{
				s++;
			}
			//for(i = 50000;i--;);
			//for(i = 50000;i--;);
		}
	}

}