; A simple boot sector program that loops forever.

; "loop" label jumps back to itself (infinite loop)
; jmp - jumps to new memory address (in this case, that of the current instr)
loop:
    jmp loop

; When compiled, our program must fit into 512 bytes, w/ last two bytes being magic-number (0xaa55) which signals that the preceeding 512 bytes are instr's and not just raw data
; so here, tell our assembly compiler to pad out our
times 510-($-$$) db 0

; program with enough zero bytes (db 0) to bring us to the ; 510th byte.
; Last two bytes (one word) form the magic number, ; so BIOS knows we are a boot sector.
dw 0xaa55