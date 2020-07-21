# Porting VPOS in S5PC100
## Contents
> 1. Simple Description
> 2. Basic setting of Startup Code
> 3. Set UART and Timer program
> 4. Set hw/sw Interrupt
> 5. Set Timer Interrupt & GPIO

## Description of the Project
This project was done in 2020 Embedded System lecture in Hanyang University.   
Main content of this project is porting the OS (VPOS) into the embedded processor 
that will be described later in this document. 
This project is for learning how embedded processor is working by porting the OS and
setting the basic functionalities of OS like bootloader, interrupts, timer, IO.
### environment
Host Computer OS    : Linux 16.04   
Embedded board      : SYS-LAB 2   
Embedded Processor  : S5PC100    
### Verification-Purpose OS (VPOS)
* Dealing with difficulty of mapping for the SoC development
* small, easy kernal structure
* RR scheduling
* PIP synchronizing method
* Hardware Abstraction Layer (HAL)
* has driver structure for Linux compatibility
### U-Boot
Bootloader that will be used in the embedded system.
### TFTP (Trivial File Transfer Protocol)
Similar to FTP, this is a protocol used usually for uploading the OS into embedded system.
I installed this into my host computer to enable the communication between computer and the board.
### Toolchain
This is for the cross-compiler that enables the code on the host computer work in the target embedded system.
## Basic setting of Startup Code

## Set UART and Timer Program

## Set Hardware & Software Interrupt

## Set Timer Interrupt & GPIO
