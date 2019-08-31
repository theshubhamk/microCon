#include "common.h"

//unsigned short i;
void pattern2()
{
	init_config();
	//while(1)
	{
		//turn on all LED's
		//PORTB = ON;
		static unsigned int mask = 0xFF, mask1 = 0x80, mask2 = 0x01, mask3 = 0;
		static unsigned int j;
		static unsigned short w, q;

		//for(j = 0; j < 16;j++)
		{
			if(j == 17)
			{
				j = 0;
				mask = 0xFF;
				mask1 = 0x80;
				mask2 = 0x01;
				mask3 = 0;
			}
			if(j < 9)
			{
				PORTB = mask3;
				if(w == 5000 || w > 5000)
				{
					mask3 = mask3 | mask2;
					mask2 = mask2 << 1;
					j++;
					w = 0;
				}
				else
				{
					w++;
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
				PORTB = mask;
				//mask = mask | mask1;
				if(q == 5000 || q > 5000)
				{
					mask = mask << 1;
					j++;
					q = 0;
				}
				else
				{
					q++;
				}
				//for(i = 50000;i--;);
				//for(i = 50000;i--;);
			}
		}
	}
}