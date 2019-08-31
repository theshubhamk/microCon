#include "common.h"
#include "digital_keypad.h"

void glow_on_press(unsigned char key)
{
	if(key == SWITCH1)
	{
		pattern1();
	}
	else if(key	== SWITCH2)
	{
		pattern2();
	}
	else if(key == SWITCH3)
	{
		pattern3();
	}
	else if(key == SWITCH4)
	{
		pattern4();
	}
}