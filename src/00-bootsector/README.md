##### `00` - simple boot sector program that loops forever.

<br />

src notes:

-   `loop` label allows us to jump back to it, forever (infinite loop).
-   When compiled, our program must fit into 512 bytes, w/ the last two bytes being the magic number `0xaa55`.
-   So we pad out our program with enough zero bytes (`db 0`) to bring us to the 510th byte.
-   Last two bytes (one word) form the magic number, so `BIOS` knows we are a boot sector.
> [assemble w/ `nasm`] + [emulate .bin file w/ `qemu`]