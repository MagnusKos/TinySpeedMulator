#include <util/delay.h>
#include <avr/io.h>

#define START_DIV 3

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

unsigned char divider=3;            //64 timer prescaler

void generator(unsigned char div, unsigned char comp, unsigned int del)
{
    unsigned char _div=3;
    unsigned char _comp=255;
    while (_div>=div)
    {
        unsigned char timediv=1;
        switch (_div)
        {
            case timer_div_1:
                timediv=1;
                break;
            case timer_div_8:
                timediv=8;
                break;
            case timer_div_64:
                timediv=64;
                break;
        }
        TCCR0B &=  0xF8 | (_div<<CS00);

        for (unsigned char _comp=255; _comp>((_div==div)?comp:31); _comp--)
        {
            OCR0A = _comp;
            _delay_ms(del/timediv);
        }
        ++_div;
    }
    
            
}
