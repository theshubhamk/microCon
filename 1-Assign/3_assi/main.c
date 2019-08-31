#include "main.h"
#include "digital_keypad.h"

/*void glow_on_press(unsigned char key)
{
#if 1
	if (key == SWITCH1)
	{
		LED1 = !LED1;
	}
	else
	{
	}
#else
	if (key == SWITCH1)
	{
		LED1 = ON;
	}
	else
	{
		LED1 = OFF;
	}
#endif
}*/

static void init_config1(void)
{
	ADCON1 = 0x0F;
	PORTB = 0X00;
	//LED1 = OFF;
	TRISB0 = 0;
	init_config();
	init_digital_keypad();
}

void main(void)
{
	unsigned char key = 0xFF;
	static unsigned char keyClone;
	int i = 0;
	init_config1();
	int j = 0;
	
	//key = ALL_RELEASED;
	while (1)
	{
		//
		key = read_digital_keypad(STATE_CHANGE);
		//for (i = 50000; i--; );
		if(key != 0xFF)
		{
			keyClone = key;
		}
		glow_on_press(keyClone);
		//i++;
	}
}
