`ifdef GL
    // Assume default net type to be wire because GL netlists don't have the wire definitions
    `default_nettype wire
`else
    `include "axi_uart.v"
    `include "icesoc_top.v"
    `include "inter_read.v"
    `include "inter.v"
    `include "peripheral.v"
    `include "sky130_sram_1kbyte_1rw1r_32x256_8.v"
    `include "uart_rx.v"
    `include "uart_to_mem.v"
    `include "uart_tx.v"
    `include "uart.v"
`endif
