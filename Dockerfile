FROM mrvertigo/archlinux

# Update and install basic development tools
RUN pacman -Syu --noconfirm --needed base base-devel gdb zsh grml-zsh-config

# ARM tools
RUN pacman -S --noconfirm arm-none-eabi-binutils arm-none-eabi-gcc arm-none-eabi-gdb arm-none-eabi-newlib

# AVR tools
RUN pacman -S --noconfirm avr-binutils avr-gcc avr-gdb avr-libc
