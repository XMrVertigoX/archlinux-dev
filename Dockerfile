FROM mrvertigo/archlinux

# Update and install basic development tools
RUN pacman -Syu --noconfirm --needed base base-devel gdb zsh grml-zsh-config

# ARM tools
RUN pacman -Sy --noconfirm arm-none-eabi-binutils arm-none-eabi-gcc arm-none-eabi-gdb arm-none-eabi-newlib

# AVR tools
RUN pacman -Sy --noconfirm avr-binutils avr-gcc avr-gdb avr-libc

# Cleanup
RUN pacman -Scc --noconfirm
