/*
By MagnusKos
fuses:
    LOW:    0x79
    HIGH:   0xFF
    EXT:    0xFF


4,8 MHz
    no CKDIV8
    256 prescaler
18750 Hz

OCR0A for output freq control




*/

#define SHUTDOWN 36000U       //Time to turn off, ssss.s
#define SPEEDUP 100         //Step-up time for increasing freq, ms
#define SPEEDUP_SLOW 500    //Same, but for the setup mode

#define F_CPU 18750UL

#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include <avr/power.h>

typedef enum
{
    timer_off        = 0,
    timer_div_1      = 1,
    timer_div_8      = 2,
    timer_div_64     = 3,
    timer_div_256    = 4,
    timer_div_1024   = 5,
    timer_ext_fall   = 6,
    timer_ext_rise   = 7
} timer_clock_t;

unsigned char divider=3;           //64 timer prescaler
unsigned int  seconds_part=0;      //Uptime, ssss.s
unsigned char compare=100;
unsigned char setmode=0;

ISR (INT0_vect)
{
    cli();
    for (char i=0; i<8; i++)
    {
        _delay_ms(100);
        if (PINB & (1<<PB1))
        {
            sei();
            return;
        }
    }
    setmode ^= 1;
    sei();
    
}

void EEPROM_write(unsigned char ucAddress, unsigned char ucData)
{
    //Wait for completion of previous write
    while(EECR & (1<<EEPE));
    /* Set Programming mode */
    EECR = (0<<EEPM1)|(0>>EEPM0);
    /* Set up address and data registers */
    EEARL = ucAddress;
    EEDR = ucData;
    /* Write logical one to EEMPE */
    EECR |= (1<<EEMPE);
    /* Start eeprom write by setting EEPE */
    EECR |= (1<<EEPE);
}

unsigned char EEPROM_read(unsigned char ucAddress)
{
    /* Wait for completion of previous write */
    while(EECR & (1<<EEPE));
    /* Set up address register */
    EEARL = ucAddress;
    /* Start eeprom read by writing EERE */
    EECR |= (1<<EERE);
    /* Return data from data register */
    return EEDR;
}

void rise_freq()
{
    unsigned char _div = (~0xF8 & TCCR0B);
    if (_div>1)
            if (OCR0A>31)
                OCR0A  -=  ((2<<(_div+1))-1);
            else
            {
                --_div;
                OCR0A   =  255;
                TCCR0B &=  0xF8 | (_div<<CS00);
            }
    else
            --OCR0A;
}

void fall_freq()
{
    unsigned char _div = (~0xF8 & TCCR0B);
    if (_div>1)
            if (OCR0A<255)
                OCR0A  +=  ((2<<(_div+1))-1);
            else
            {
                ++_div;
                OCR0A   =  31;
                TCCR0B &=  0xF8 | (_div<<CS00);
            }
    else
        if (OCR0A!=255)
            ++OCR0A;
}

void setloop()                      //setup mode, used to reconfigurate maximum output freq
{
    divider =  3;
    TCCR0B &=  0xF8 | (divider<<CS00);
    OCR0A   =  255;
    while (setmode)
    {
        PORTB ^=  (1<<PB3);         //led blinks in this mode
        _delay_ms(SPEEDUP_SLOW);
        if (divider>1)
            if (OCR0A>31)
                OCR0A  -=  ((2<<(divider+1))-1);
            else
            {
                --divider;
                OCR0A   =  255;
                TCCR0B &=  0xF8 | (divider<<CS00);
            }
        else
            if (OCR0A == 0)
            {
                divider = 3;
                OCR0A   =  255;
                TCCR0B &=  0xF8 | (divider<<CS00);
            }
            else
                --OCR0A;
    }
    EEPROM_write(4, OCR0A);
    EEPROM_write(8, divider);
}

void reload()
{
    OCR0A=255;
    compare = EEPROM_read(4);
    divider = EEPROM_read(8);
    seconds_part = 0;
    
    if (divider>3 && divider<1)
        divider=2;
}

void init()
{
    cli();
    
    clock_prescale_set(clock_div_256);
    
    DDRB   |=  (1<<PB0) | (1<<PB3);         //2 and 5 pins on output
    DDRB   &= ~(1<<PB1);                    //6 pin input
    PORTB  &= ~(1<<PB1);                    //6 pin Hi-Z
    
    TCCR0A |=  (1<<COM0A0);                 //Toggle OC0A on match
    TCCR0A &= ~(1<<COM0A1);
    
    TCCR0A |=  (2<<WGM00);                  //CTC Mode
    TCCR0B |=  (1<<CS00);                   //8 prescaler, from 4000 Hz (0) to 31,25 Hz (255)
    
    reload();
    
    MCUCR  |=  (1<<ISC01);                  //Falling Edge interrupt on PB1
    MCUCR  &= ~(1<<ISC00);
    GIMSK  |=  (1<<INT0);                   //Enable INT0 interrupt
    
    PORTB  |=  (1<<PB3);                    //Turn on led
}

void stop()
{
    DDRB   &= ~(1<<PB0);
    PORTB  &= ~(1<<PB0);
    PORTB  &= ~(1<<PB3);
    TCCR0B &= ~(1<<CS00);
}

/*
 * for 64 prescaler, OCR0A should go from 255 (0,57Hz) to 3 (36,62Hz)
 * then prescaler changes to 1, OCR0A goes from 255 (36,62Hz) to 0 (9375Hz)
 */



int main()
{
    init();
    
    /*if (compare == 255)
    {
        compare = 100;                      //if smth wrong with EEPROM, then write and set 100
        EEPROM_write(4, 100);
    }*/
    
    sei();
    
    while (1)
    {
        if (setmode)
        {
            setloop();
            reload();
            PORTB |=  (1<<PB3);
        }
        else
        {
            _delay_ms(SPEEDUP);
            seconds_part++;
            if (seconds_part < SHUTDOWN)
            {
                if ((OCR0A!=compare) && ((~0xF8 & TCCR0B) != divider))
                    rise_freq();
            }
            else
            {
                if ((OCR0A!=255) && ((~0xF8 & TCCR0B) != 1))
                    fall_freq();
                else
                {
                    stop();
                    return 0;
                }
            }
        }
    }
    stop();
    return 0;
}
