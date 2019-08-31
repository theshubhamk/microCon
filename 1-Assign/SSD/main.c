#include "pic_specific.h"
#include "main.h"
#include "ssd_display.h"

static unsigned char ssd[MAX_SSD_CNT];
unsigned char num[MAXX] = {0xE7,0x21,0xCB,0x6B,0x2D,0x6E,0xEE,0x23,0xEF,0x6F};
void init_config(void)
{
	init_ssd_control();
}

void main(void)
{
	init_config();
	unsigned int wait = 0, wait2 = 0;
	static unsigned int inc , inc2, inc3, inc4;//inc = 0, inc2 = 0;
	static unsigned int inc = 9 , inc2 = 9, inc3 = 9, inc4 = 9;
	while(1)
	{
	    //ssd[2] = num[inc];
	    //ssd[3] = num[inc2];
	    ssd[3] = num[inc4];
	    ssd[2] = num[inc3];
	    ssd[1] = num[inc2];
		ssd[0] = num[inc];
		
		display(ssd);
			
			/*if(inc2 != 10)
	    	{
	    		inc2++;
	    	}
	    	else
	    	{
	    		inc2 = 0;
	    		inc++;
	    	}

	    	if(inc == 10)
	    	{
	    		inc = 0;
	    		inc2 = 0;
	    	}*/
		//upCounter
		/*if(inc4 != 10)
		{
			inc4++;
			if (inc4 == 10)
			{
				inc3++;
				inc4 = 0;
				if (inc3 == 10)
				{
					inc2++;
					inc3 = 0;
		static unsigned int inc , inc2, inc3, inc4;			if(inc2 == 10)
					{
						inc++;
						inc2 = 0;
					}
				}
			}

		}*/

		//downCounter
		if(inc4 != 0)
		{
			inc4--;
			if (inc4 == 0)
			{
				inc3--;
				inc4 = 9;
				if (inc3 == 0)
				{
					inc2--;
					inc3 = 9;
					if(inc2 == 0)
					{
						inc--;
						inc2 = 9;
					}
				}
			}

		}
	//for (unsigned int i = 60000;i--;);
	}
}
