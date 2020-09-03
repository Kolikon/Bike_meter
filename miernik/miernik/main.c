/*
Bike meter
Features:
* wheel circumference stored in float obwod (line 188);
* 3 digit display;
* hall sensor;
* LED lights up when hall sensor reads position (just as an indication);
* uses eeprom to save total distance (manual);
* three buttons:
	- first: switch to next mode;
	- second: switch between m/s and km/h;
	- third: save total distance to eeprom;
	- in addition pressing all three buttons resets total distance (writes 0 to eeprom);
* modes:
	- distance;
	- speed;
	- average speed (not moving for longer than ~2 seconds <TOV1 flag set> is treated as stop - average speed will not be counted until you start moving again);
	- rpms;
	- total distance;
This is not an optimal code, but it works fine on atmega8.
Kolikon
*/

#include <avr/io.h>
#define F_CPU 8000000UL
#include "util/delay.h"
#include <avr/eeprom.h>

void cyfra(unsigned char k)
{
	switch(k)
	{
		case 0:
		{
			PORTD= 0b00000101;
			break;
		}
		case 1:
		{
			PORTD= 0b11011101;
			break;
		}
		case 2:
		{
			PORTD= 0b01000110;
			break;
		}
		case 3:
		{
			PORTD= 0b01010100;
			break;
		}
		case 4:
		{
			PORTD= 0b10011100;
			break;
		}
		case 5:
		{
			PORTD= 0b00110100;
			break;
		}
		case 6:
		{
			PORTD= 0b00100100;
			break;
		}
		case 7:
		{
			PORTD= 0b01011101;
			break;
		}
		case 8:
		{
			PORTD= 0b00000100;
			break;
		}
		case 9:
		{
			PORTD= 0b00010100;
			break;
		}
		case 10:
		{
			PORTD= 0b11111011;
			break;
		}
		default:
		{
			PORTD= 0xff;
			break;
		}
	}
}

void numercyfry(unsigned char k)
{
	switch(k)
	{
		case 1:
		{
			if((PINC & 32) == 0)
			{
				PORTB= 0b00001001;
			}
			else
			{
				PORTB= 0b00000001;;
			}
			break;
		}
		case 2:
		{
			if((PINC & 32) == 0)
			{
				PORTB= 0b00001010;
			}
			else
			{
				PORTB= 0b00000010;;
			}
			break;
		}
		case 3:
		{
			if((PINC & 32) == 0)
			{
				PORTB= 0b00001100;
			}
			else
			{
				PORTB= 0b00000100;;
			}
			break;
		}
		default:
		{
			if((PINC & 32) == 0)
			{
				PORTB= 0b00001000;
			}
			else
			{
				PORTB= 0b00000000;;
			}
			break;
		}
	}
}

void my_delay(int t)
{
	while(t > 0)
	{
		_delay_us(1);
		t--;
	}
}

void liczba(int k, int dot, int micros)
{
	unsigned char cyf;
	for(int l= 1; l < 4; l++)
	{
		cyf= k% 10;
		cyfra(cyf);
		numercyfry(l);
		my_delay(micros);
		k= k/10;
	}
	cyfra(10);
	numercyfry(dot);
	my_delay(micros);
}

float przebieg_ee EEMEM;

int main()
{
	DDRB= 0b00001111;
	DDRD= 0b11111111;
	DDRC= 0b00000000;
	PORTC= 0b00000111;
	
	TCCR1B= 0b00000100; // prescaler = 256
	TCNT1= 0;
	TIFR= 1 << TOV1;
	
	const float obwod= 2.18; // [m]
	unsigned char poprzedni= 0, teraz= 0, poprzedni_guzik0= 0, teraz_guzik0= 0, poprzedni_guzik1= 0, teraz_guzik1= 0, poprzedni_guzik2= 0, teraz_guzik2= 0, tryb= 0;
	float dystans= 0, przebieg;
	int klatka;
	
	float predkosc= 0, srednia_predkosc= 0, rpm= 0, mnoznik= 3.6;
	float czas, caly_czas= 0;
	
	przebieg= eeprom_read_float(&przebieg_ee);
	
	while(1)
	{
		teraz= !(PINC & 32);
		teraz_guzik0= !(PINC & 1);
		teraz_guzik1= !(PINC & 2);
		teraz_guzik2= !(PINC & 4);
		
		if( (poprzedni == 0) && (teraz == 1) )
		{
			dystans+= obwod;
			przebieg+= obwod;
			
			if( TIFR & (1 << TOV1) )
			{
				czas= 10000;
				TIFR= 1 << TOV1;
			} else
			{
				czas= TCNT1*0.000032;
				caly_czas+= czas;
			}
			TCNT1= 0;
			predkosc= (obwod/czas);
			srednia_predkosc= dystans/caly_czas;
			rpm= 60/czas;
		}
		
		//if(predkosc >= 15)
		//{
			//klatka= 300;
		//}
		//else if(predkosc >= 10)
		//{
			//klatka= 500;
		//}
		//else if(predkosc >= 5)
		//{
			//klatka= 1000;
		//}
		//else
		//{
			//klatka= 2000;
		//}
		if(predkosc > 5)
		{
			klatka= 8000/predkosc;
		}
		else
		{
			klatka= 2000;
		}
		
		
		if( (PINC & 7) == 0)
		{
			eeprom_write_float(&przebieg_ee, 0);
			_delay_ms(800);
		}
		
		if( (poprzedni_guzik0 == 0) && (teraz_guzik0 == 1) )
		{
			tryb= (tryb + 1)%5 ;
		}
		
		if( (poprzedni_guzik1 == 0) && (teraz_guzik1 == 1) )
		{
			if(mnoznik < 3)
			{
				mnoznik= 3.6;
			}
			else
			{
				mnoznik= 1;
			}
		}
		
		if( (poprzedni_guzik2 == 0) && (teraz_guzik2 == 1) )
		{
			eeprom_write_float(&przebieg_ee, przebieg);
		}
		
		switch(tryb)
		{
			case 0:
			{
				if(dystans < 100)
				{
					liczba(dystans*10, 2, klatka);
				}
				else if(dystans < 1000)
				{
					liczba(dystans, 1, klatka);
				}
				else if(dystans < 100000)
				{
					liczba(dystans*0.01, 2, klatka);
				}
				else
				{
					liczba(dystans*0.001, 1, klatka);
				}
				
				break;
			}
			
			case 1:
			{
				if(predkosc*mnoznik < 10)
				{
					liczba(predkosc*mnoznik*100, 3, klatka);
				}
				else if(predkosc*mnoznik < 100)
				{
					liczba(predkosc*mnoznik*10, 2, klatka);
				}
				else
				{
					liczba(predkosc*mnoznik, 1, klatka);
				}
				
				break;
			}
			
			case 2:
			{
				if(srednia_predkosc*mnoznik < 10)
				{
					liczba(srednia_predkosc*mnoznik*100, 3, klatka);
				}
				else if(srednia_predkosc*mnoznik < 100)
				{
					liczba(srednia_predkosc*mnoznik*10, 2, klatka);
				}
				else
				{
					liczba(srednia_predkosc*mnoznik, 1, klatka);
				}
				
				break;
			}
			
			case 3:
			{
				if(rpm < 10)
				{
					liczba(rpm*100, 3, klatka);
				}
				else if(rpm < 100)
				{
					liczba(rpm*10, 2, klatka);
				}
				else
				{
					liczba(rpm, 1, klatka);
				}
				
				break;
			}
			
			case 4:
			{
				if(przebieg < 100)
				{
					liczba(przebieg*10, 2, klatka);
				}
				else if(przebieg < 1000)
				{
					liczba(przebieg, 1, klatka);
				}
				else if(przebieg < 100000)
				{
					liczba(przebieg*0.01, 2, klatka);
				}
				else
				{
					liczba(przebieg*0.001, 1, klatka);
				}
				
				break;
			}
		}
		
		poprzedni= teraz;
		poprzedni_guzik0= teraz_guzik0;
		poprzedni_guzik1= teraz_guzik1;
		poprzedni_guzik2= teraz_guzik2;
	}	
}