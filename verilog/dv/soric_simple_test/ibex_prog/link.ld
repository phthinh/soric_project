/*  */

OUTPUT_ARCH(riscv)

MEMORY
{
    ram         : ORIGIN = 0x00000000, LENGTH = 0x2000     /* 8  kB */
    stack       : ORIGIN = 0x00001F00, LENGTH = 0x100     /* 256 B */
}

/* Stack */
_min_stack   = 0x080;   /* 256 - minimum stack space to reserve */
_stack_len   = LENGTH(stack);
_stack_top   = ORIGIN(stack) + LENGTH(stack);

_entry_point = _vectors_start + 0x80;
ENTRY(_entry_point)

_tohost      = 0x1FFC;

SECTIONS
{
    .vectors :
    {
        . = ALIGN(4);
		_vectors_start = .;
        KEEP(*(.vectors))
		_vectors_end = .;
    } > ram

    .text : {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
    }  > ram

    .ramcross12 0x3FC: AT (0x3FC) {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
    }  > ram

    .ramcross23 0x7FC: AT (0x7FC) {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
    }  > ram

    .ramcross34 0xBFC: AT (0xBFC) {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
    }  > ram

    .rodata : {
        . = ALIGN(4);
        /* Small RO data before large RO data */
        *(.srodata)
        *(.srodata.*)
        *(.rodata);
        *(.rodata.*)
    } > ram

    .data : {
        . = ALIGN(4);
        /* Small data before large data */
        *(.sdata)
        *(.sdata.*)
        *(.data);
        *(.data.*)
    } > ram

    .bss :
    {
        . = ALIGN(4);
        _bss_start = .;
        /* Small BSS before large BSS */
        *(.sbss)
        *(.sbss.*)
        *(.bss)
        *(.bss.*)
        *(COMMON)
        _bss_end = .;
    } > ram

    /* ensure there is enough room for stack */
    .stack (NOLOAD): {
        . = ALIGN(4);
        . = . + _min_stack ;
        . = ALIGN(4);
        stack = . ;
        _stack = . ;
    } > stack
}
