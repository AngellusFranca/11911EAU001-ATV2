ENTRY(reset_handler)

MEMORY
{
    FLASH(rx): ORIGIN = 0x08000000, LENGTH = 512K
    SRAM(rwx): ORIGIN = 0x20000000, LENGTH = 128K
}


SECTIONS
{
   .text :
   {
       KEEP(*(.isr_vectors))
       *(.text)
       *(.rodata)
       . = ALIGN(4);
       _etext = .;
       _la_data = _etext;
       }> FLASH
       .data :
       {
           _sdata = .;
           *(.data)
           . = ALIGN(4);
           _edata = .;
           }> SRAM AT> FLASH
           .bss :
           {
               . = ALIGN(4);
               _sbss = .;
               *(.bss)
               . = ALIGN(4);
               _ebss = .;
               }> SRAM

           
       }

