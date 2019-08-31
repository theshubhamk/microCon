#include "main.h"
#include "external_interrupt.h"
#include "isr.h"

extern bit key_detected;

static void init_config(void)
{
	ADCON1 = 0x0F;

	TRISB7 = 0;
	TRISB0 = 1;

	init_external_interrupt();

	GIE = 1;
}

void main(void)
{
	unsigned short wait;

    init_config();

    while (1)
    {
		if (key_detected)
		{
			key_detected = 0;
			LED8 = !LED8;
		}
	/*	if (RC0 == 0)
		{
			key_detected = 0;
			LED8 = !LED8;
		}*/

		for (wait = 10000; wait--; );
    }
}
