#include "main.h"
#include "digital_keypad.h"

void glow_on_press(unsigned char key)
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
}

static void init_config(void)
{
	ADCON1 = 0x0F;

	LED1 = OFF;
	TRISB0 = 0;

	init_digital_keypad();
}

void main(void)
{
	unsigned char key;
	int i;
	init_config();

	while (1)
	{
		key = read_digital_keypad(STATE_CHANGE);
		glow_on_press(key);
		for (i = 50000; i--; );
	}
}
