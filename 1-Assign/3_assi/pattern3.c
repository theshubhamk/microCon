#include "common.h"
#include "digital_keypad.h"


void pattern3(void)
{
	static unsigned short i, j;	
	//i = 0;
	//init_config();

		if(i++ <= 15000)
		{
			PORTB = 0xAA;
			if(i == 15000)
			{
				j = 0;
			}

		}
		if(j++ <= 15000 && i >= 15000)
		{
			//key detect
			PORTB = 0x55;
			if(j == 15000)
			{
				i = 0;
			}
		}
}