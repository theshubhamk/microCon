opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F4580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_display
	FNCALL	_main,_init_config
	FNCALL	_init_config,_init_ssd_control
	FNROOT	_main
	global	_num
	global	main@inc
	global	main@inc2
	global	main@inc3
	global	main@inc4
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	6

;initializer for _num
	db	low(0E7h)
	db	low(021h)
	db	low(0CBh)
	db	low(06Bh)
	db	low(02Dh)
	db	low(06Eh)
	db	low(0EEh)
	db	low(023h)
	db	low(0EFh)
	db	low(06Fh)
	line	16

;initializer for main@inc
	dw	(09h)&0ffffh

;initializer for main@inc2
	dw	(09h)&0ffffh

;initializer for main@inc3
	dw	(09h)&0ffffh

;initializer for main@inc4
	dw	(09h)&0ffffh
	global	_ssd
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISD
_TRISD	set	0xF95
; #config settings
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
_ssd:
       ds      4
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	6
	global	_num
_num:
       ds      10
psect	dataCOMRAM
	file	"main.c"
	line	16
main@inc:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	16
main@inc2:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	16
main@inc3:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	16
main@inc4:
       ds      2
	file	"pic18F4580.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (18 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,18
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init_ssd_control:	; 1 bytes @ 0x0
??_init_ssd_control:	; 1 bytes @ 0x0
?_display:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
??_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	display@data
display@data:	; 2 bytes @ 0x0
	ds   2
??_display:	; 1 bytes @ 0x2
	ds   2
	global	display@wait
display@wait:	; 2 bytes @ 0x4
	ds   2
	global	display@wait1
display@wait1:	; 2 bytes @ 0x6
	ds   2
	global	display@digit
display@digit:	; 1 bytes @ 0x8
	ds   1
??_main:	; 1 bytes @ 0x9
	global	main@wait
main@wait:	; 2 bytes @ 0x9
	ds   2
	global	main@wait2
main@wait2:	; 2 bytes @ 0xB
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        18
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     13      35
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    display@data	PTR unsigned char  size(2) Largest target is 4
;!		 -> ssd(COMRAM[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_display
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0     247
;!                                              9 COMRAM     4     4      0
;!                            _display
;!                        _init_config
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0       0
;!                   _init_ssd_control
;! ---------------------------------------------------------------------------------
;! (2) _init_ssd_control                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display                                             10     8      2     245
;!                                              0 COMRAM     9     7      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _display
;!   _init_config
;!     _init_ssd_control
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F      D      23       1       36.8%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      23       3        0.0%
;!DATA                 0      0      23      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait2           2   11[COMRAM] unsigned int 
;;  wait            2    9[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display
;;		_init_config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	12
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	14
	
l766:
;main.c: 14: init_config();
	call	_init_config	;wreg free
	line	15
	
l768:
;main.c: 15: unsigned int wait = 0, wait2 = 0;
	movlw	high(0)
	movwf	((c:main@wait+1)),c
	movlw	low(0)
	movwf	((c:main@wait)),c
	
l770:
	movlw	high(0)
	movwf	((c:main@wait2+1)),c
	movlw	low(0)
	movwf	((c:main@wait2)),c
	goto	l772
	line	18
;main.c: 16: static unsigned int inc , inc2, inc3, inc4;
;main.c: 17: static unsigned int inc = 9 , inc2 = 9, inc3 = 9, inc4 = 9;
;main.c: 18: while(1)
	
l22:
	line	22
	
l772:
;main.c: 19: {
;main.c: 22: ssd[3] = num[inc4];
	movlw	low(_num)
	addwf	((c:main@inc4)),c,w
	movwf	c:fsr2l
	movlw	high(_num)
	addwfc	((c:main@inc4+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(0+((c:_ssd)+03h)),c
	line	23
	
l774:
;main.c: 23: ssd[2] = num[inc3];
	movlw	low(_num)
	addwf	((c:main@inc3)),c,w
	movwf	c:fsr2l
	movlw	high(_num)
	addwfc	((c:main@inc3+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(0+((c:_ssd)+02h)),c
	line	24
	
l776:
;main.c: 24: ssd[1] = num[inc2];
	movlw	low(_num)
	addwf	((c:main@inc2)),c,w
	movwf	c:fsr2l
	movlw	high(_num)
	addwfc	((c:main@inc2+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(0+((c:_ssd)+01h)),c
	line	25
	
l778:
;main.c: 25: ssd[0] = num[inc];
	movlw	low(_num)
	addwf	((c:main@inc)),c,w
	movwf	c:fsr2l
	movlw	high(_num)
	addwfc	((c:main@inc+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:_ssd)),c
	line	27
	
l780:
;main.c: 27: display(ssd);
		movlw	low(_ssd)
	movwf	((c:display@data)),c
	movlw	high(_ssd)
	movwf	((c:display@data+1)),c

	call	_display	;wreg free
	line	67
	
l782:
;main.c: 67: if(inc4 != 0)
	movf	((c:main@inc4)),c,w
iorwf	((c:main@inc4+1)),c,w
	btfsc	status,2
	goto	u171
	goto	u170

u171:
	goto	l772
u170:
	line	69
	
l784:
;main.c: 68: {
;main.c: 69: inc4--;
	decf	((c:main@inc4)),c
	btfss	status,0
	decf	((c:main@inc4+1)),c
	line	70
	
l786:
;main.c: 70: if (inc4 == 0)
	movf	((c:main@inc4)),c,w
iorwf	((c:main@inc4+1)),c,w
	btfss	status,2
	goto	u181
	goto	u180

u181:
	goto	l772
u180:
	line	72
	
l788:
;main.c: 71: {
;main.c: 72: inc3--;
	decf	((c:main@inc3)),c
	btfss	status,0
	decf	((c:main@inc3+1)),c
	line	73
	
l790:
;main.c: 73: inc4 = 9;
	movlw	high(09h)
	movwf	((c:main@inc4+1)),c
	movlw	low(09h)
	movwf	((c:main@inc4)),c
	line	74
	
l792:
;main.c: 74: if (inc3 == 0)
	movf	((c:main@inc3)),c,w
iorwf	((c:main@inc3+1)),c,w
	btfss	status,2
	goto	u191
	goto	u190

u191:
	goto	l772
u190:
	line	76
	
l794:
;main.c: 75: {
;main.c: 76: inc2--;
	decf	((c:main@inc2)),c
	btfss	status,0
	decf	((c:main@inc2+1)),c
	line	77
	
l796:
;main.c: 77: inc3 = 9;
	movlw	high(09h)
	movwf	((c:main@inc3+1)),c
	movlw	low(09h)
	movwf	((c:main@inc3)),c
	line	78
	
l798:
;main.c: 78: if(inc2 == 0)
	movf	((c:main@inc2)),c,w
iorwf	((c:main@inc2+1)),c,w
	btfss	status,2
	goto	u201
	goto	u200

u201:
	goto	l772
u200:
	line	80
	
l800:
;main.c: 79: {
;main.c: 80: inc--;
	decf	((c:main@inc)),c
	btfss	status,0
	decf	((c:main@inc+1)),c
	line	81
	
l802:
;main.c: 81: inc2 = 9;
	movlw	high(09h)
	movwf	((c:main@inc2+1)),c
	movlw	low(09h)
	movwf	((c:main@inc2)),c
	goto	l772
	line	82
	
l26:
	goto	l772
	line	83
	
l25:
	goto	l772
	line	84
	
l24:
	goto	l772
	line	86
	
l23:
	goto	l772
	line	88
	
l27:
	line	18
	goto	l772
	
l28:
	line	89
	
l29:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 7 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init_ssd_control
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	7
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	7
	global	__size_of_init_config
	__size_of_init_config	equ	__end_of_init_config-_init_config
	
_init_config:
;incstack = 0
	opt	stack 29
	line	9
	
l670:
;main.c: 9: init_ssd_control();
	call	_init_ssd_control	;wreg free
	line	10
	
l11:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_ssd_control

;; *************** function _init_ssd_control *****************
;; Defined at:
;;		line 5 in file "ssd_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"ssd_display.c"
	line	5
global __ptext2
__ptext2:
psect	text2
	file	"ssd_display.c"
	line	5
	global	__size_of_init_ssd_control
	__size_of_init_ssd_control	equ	__end_of_init_ssd_control-_init_ssd_control
	
_init_ssd_control:
;incstack = 0
	opt	stack 29
	line	8
	
l664:
;ssd_display.c: 8: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	10
	
l666:
;ssd_display.c: 10: TRISA = TRISA & 0xF0;
	movf	((c:3986)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:3986)),c	;volatile
	line	13
	
l668:
;ssd_display.c: 13: PORTA = PORTA & 0xF0;
	movf	((c:3968)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:3968)),c	;volatile
	line	14
	
l40:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_ssd_control
	__end_of_init_ssd_control:
	signat	_init_ssd_control,89
	global	_display

;; *************** function _display *****************
;; Defined at:
;;		line 17 in file "ssd_display.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[COMRAM] PTR unsigned char 
;;		 -> ssd(4), 
;; Auto vars:     Size  Location     Type
;;  wait1           2    6[COMRAM] unsigned int 
;;  wait            2    4[COMRAM] unsigned int 
;;  digit           1    8[COMRAM] unsigned char 
;;  data_bit        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	17
global __ptext3
__ptext3:
psect	text3
	file	"ssd_display.c"
	line	17
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:
;incstack = 0
	opt	stack 30
	line	23
	
l738:
;ssd_display.c: 19: unsigned int wait,wait1;
;ssd_display.c: 20: unsigned char data_bit;
;ssd_display.c: 21: unsigned char digit;
;ssd_display.c: 23: for(wait1 =0; wait1 < 50; wait1++)
	movlw	high(0)
	movwf	((c:display@wait1+1)),c
	movlw	low(0)
	movwf	((c:display@wait1)),c
	
l740:
		movf	((c:display@wait1+1)),c,w
	bnz	u110
	movlw	50
	subwf	 ((c:display@wait1)),c,w
	btfss	status,0
	goto	u111
	goto	u110

u111:
	goto	l744
u110:
	goto	l50
	
l742:
	goto	l50
	line	24
	
l43:
	line	25
	
l744:
;ssd_display.c: 24: {
;ssd_display.c: 25: for (digit = 0; digit < 4; digit++)
	movlw	low(0)
	movwf	((c:display@digit)),c
	
l746:
		movlw	04h-1
	cpfsgt	((c:display@digit)),c
	goto	u121
	goto	u120

u121:
	goto	l750
u120:
	goto	l762
	
l748:
	goto	l762
	line	26
	
l45:
	line	27
	
l750:
;ssd_display.c: 26: {
;ssd_display.c: 27: PORTD = data[digit];
	movf	((c:display@digit)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	((c:display@data)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:display@data+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3971)),c	;volatile
	line	28
	
l752:
;ssd_display.c: 28: PORTA = (PORTA & 0xF0) | (0x01) << digit;
	movff	(c:display@digit),??_display+0+0
	movlw	(01h)&0ffh
	movwf	(??_display+1+0)&0ffh,c
	incf	(??_display+0+0),c
	goto	u134
u135:
	bcf	status,0
	rlcf	((??_display+1+0)),c
u134:
	decfsz	(??_display+0+0),c
	goto	u135
	movf	((c:3968)),c,w	;volatile
	andlw	low(0F0h)
	iorwf	((??_display+1+0)),c,w
	movwf	((c:3968)),c	;volatile
	line	29
	
l754:
;ssd_display.c: 29: for (wait = 1000; wait--; );
	movlw	high(03E8h)
	movwf	((c:display@wait+1)),c
	movlw	low(03E8h)
	movwf	((c:display@wait)),c
	goto	l756
	
l48:
	goto	l756
	
l47:
	
l756:
	decf	((c:display@wait)),c
	btfss	status,0
	decf	((c:display@wait+1)),c
		incf	((c:display@wait)),c,w
	bnz	u141
	incf	((c:display@wait+1)),c,w
	btfss	status,2
	goto	u141
	goto	u140

u141:
	goto	l756
u140:
	goto	l758
	
l49:
	line	25
	
l758:
	incf	((c:display@digit)),c
	
l760:
		movlw	04h-1
	cpfsgt	((c:display@digit)),c
	goto	u151
	goto	u150

u151:
	goto	l750
u150:
	goto	l762
	
l46:
	line	23
	
l762:
	infsnz	((c:display@wait1)),c
	incf	((c:display@wait1+1)),c
	
l764:
		movf	((c:display@wait1+1)),c,w
	bnz	u160
	movlw	50
	subwf	 ((c:display@wait1)),c,w
	btfss	status,0
	goto	u161
	goto	u160

u161:
	goto	l744
u160:
	goto	l50
	
l44:
	line	32
	
l50:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
	signat	_display,4217
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
