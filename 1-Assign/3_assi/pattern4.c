#include "common.h"
#include "digital_keypad.h"

void pattern4()
{
	static unsigned short k, l;
	//init_config();

		//PORTB = 0xF0;
		if(k++ <= 15000)
		{
			PORTB = 0xF0;
			if(k == 15000)
			{
				l = 0;
			}
		}
		if(l++ <= 15000 && k >= 15000)
		{
			PORTB = 0x0F;
			if(l == 15000)
			{
				k = 0;
			}
		}
		//for(i = 50000;i--;);
		//for(i = 50000;i--;);
		//PORTB = 0x0F;
		//for(i = 50000;i--;);
	//	for(i = 50000;i--;);
}