#!/bin/bash
 
 echo "Compiling..."
 avr-gcc -Wall -g -Os -mmcu=attiny13a -o main.bin main.c
 echo "Compiled."
 avr-size -C --mcu=attiny13a main.bin
 avr-objcopy -j .text -j .data -O ihex main.bin main.hex
 echo "main.hex generated."
