###### setup env
- install tools with homebrew
    > `$ brew install qemu nasm`
    > `$ qemu-system-x86_64 --version`
    > `$ nasm -v`
- assembly code file types:
    - `.a` (Archive) - static library used in Unix-like systems. It contains compiled object files that can be linked into programs
    - `.s` (Source) - contains assembly language source code, which is human-readable code that the assembler translates into machine code
    - `.S` (Source) - similar to `.s` but is first processed by the C preprocessor (cpp). This allows for the inclusion of macros and other preprocessor directives.
    - `.asm` (Assembly) - contains assembly language src. Typically used by assemblers like NASM
- assemble with nasm
    > `$ nasm -f [myfile.asm] -o [myfile.bin]`
- run executable on cpu emulator (QEmu)
    > `$ qemu-system-x86_64 [myfile.bin]`
    > - You will see a window open which says "Booting from Hard Disk..."
---

#### § Booting 🚀

###### Overview

Booting is the process of starting up a computer and loading the OS. It involves several key steps, starting from powering on the hardware to loading the kernel into memory.

###### Steps of the Booting Process

1. **Power-On Self Test (POST) 🔌**
   - When you turn on your computer, the BIOS (Basic Input/Output System) performs a POST to check the hardware components.
   - Think of it as a quick health check-up for your computer's hardware.

2. **BIOS and Bootloader 📜**
   - The BIOS looks for a bootable device (e.g., HDD, SSD, USB).
   - It loads the bootloader from the Master Boot Record (MBR) of the selected device into memory.
   - **Mental Model**: Imagine the BIOS as a librarian finding the first page of a book (the bootloader) to start reading.
   - Magic number

3. **Bootloader Execution 🔄**
   - The bootloader's job is to load the operating system kernel into memory and transfer control to it.
   - It's a small program that sets up the necessary environment for the kernel to run.

4. **Kernel Loading and Initialization 🧠**
   - The kernel is loaded into memory, and the bootloader hands over control.
   - The kernel initializes hardware components and system processes.