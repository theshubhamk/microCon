#include "pic_specific.h"
#include "main.h"
#include "ssd_display.h"

void init_ssd_control(void)
{
	/* Setting PORTB as output for Data Lines */
	TRISD = 0x00;
	/* Setting SSD Enable lines as output */
	TRISA = TRISA & 0xF0;

	/* Switching OFF all the SSDs to start with */
	SSD_CNT_PORT = SSD_CNT_PORT & 0xF0;
}

/* Better if implemented in timer handler */
void display(unsigned char data[])
{
	unsigned int wait,wait1;
	unsigned char data_bit;
	unsigned char digit;

	for(wait1 =0; wait1 < 50; wait1++)
	{
			for (digit = 0; digit < MAX_SSD_CNT; digit++)
			{
				SSD_DATA_PORT = data[digit];
				SSD_CNT_PORT = (SSD_CNT_PORT & 0xF0) | (0x01) << digit;
				for (wait = 1000; wait--; );
			}
	}
}
