<p align="center"><img src="img/icon.png?raw=true"></p>

# ATtiny13 Plant

Monitor soil moisture and water plant. Portable and high efficiency with lithium-ion batteries.

![Photo](img/photo.jpg?raw=true)

![GUI](gui/Interface.png?raw=true)

## Download

![MacOS](img/mac.png?raw=true) [MacOS](../../releases/download/1.0/ATtiny13-Plant.dmg)

![Windows](img/win.png?raw=true) [Windows](../../releases/download/1.0/ATtiny13-Plant.zip)

![Linux](img/linux.png?raw=true) [Linux](../../releases/download/1.0/ATtiny13-Plant.tgz)

![Firmware](img/chip.png?raw=true) [Firmware](../../releases/download/1.0/ATtiny13-Plant-Firmware.zip)

## BOM (Bill of Materials)

| Part  | Value      | Package             | Function |
| ----- |:----------:| -------------------:|---------:|
| IC1   | ATTINY13A  | SOP-8 or DIP-8      | CPU      |
| C1    | 100nF      | 0805 or 0603 (104)  | CPU      |
| T1A/B | 2N4401 NPN | TO-92 or SOT-23     | Pump     |
| R1    | 100R       | 0805 or 0603 (101)  | Pump     |
| R2    | 10k        | 0805 or 0603 (103)  | Pump     |
| R6    | 10k        | 0805 or 0603 (103)  | Sensor   |
| LED1  | Red        | 0805 or DIP-2       | LED      |
| R7    | 1k         | 0805 or 0603 (102)  | LED      |
| -     | 3.7-4.2V   | Lithium 18650       | Battery  |
| -     | TP4056     | Lithium Charger     | Charger  |

## PCB

Designed with [EagleCAD](https://www.autodesk.com/products/eagle/free-download)

## Diagram

![Diagram](img/diagram.png?raw=true)

![Operational](img/diagram2.png?raw=true)

![Technical](img/technical.png?raw=true)

## Compile

Install "avr-gcc" and run "make".

> [MacOS](https://ww1.microchip.com/downloads/en/DeviceDoc/avr8-gnu-toolchain-osx-3.6.2.503-darwin.any.x86_64.tar.gz)
>
> [Windows](https://ww1.microchip.com/downloads/en/DeviceDoc/avr8-gnu-toolchain-3.6.2.1759-win32.any.x86.zip)

```
avr-gcc -std=gnu99 -Wall -Os -mmcu=attiny13a main.c -o main.o
avr-objcopy -O binary main.o main.bin
avr-objcopy -O ihex main.o main.hex
```

## Flash

```
avrdude -p t13 -c usbtiny -Uhfuse:w:0xFB:m -Ulfuse:w:0x6A:m -U flash:w:main.hex:i
```

There are 3 options to flash ATtiny13 chip.

1. [USBtiny](usbtiny) (built-in)
2. [USBasp](usbasp)
3. [Raspberry Pi](usbpi)

## Licenses

> ATtiny13 Plant
>
> [![CCSA](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/legalcode)
>
> USBasp / USBtiny
>
> [![GNU](https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Heckert_GNU_white.svg/38px-Heckert_GNU_white.svg.png)](https://www.gnu.org/licenses/)