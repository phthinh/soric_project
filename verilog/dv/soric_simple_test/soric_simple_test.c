/*
 * SPDX-FileCopyrightText: 
 * 2021 Thinh Pham
 * 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// This include is relative to $CARAVEL_PATH (see Makefile)
#include "verilog/dv/caravel/defs.h"
#include "verilog/dv/caravel/stub.c"
#include "ibex_prog.h"

/*
	Wishbone Test:
		- Configures MPRJ lower 8-IO pins as outputs
		- Checks counter value through the wishbone port
*/
int i = 0; 
int chk = 0;

void main()
{

	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |
	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |
	*/

	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

	reg_spimaster_config = 0xa002;	// Enable, prescaler = 2,
                                        // connect to housekeeping SPI

	// Connect the housekeeping SPI to the SPI master
	// so that the CSB line is not left floating.  This allows
	// all of the GPIO pins to be used for user functions.

    reg_mprj_io_31 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_30 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_29 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_28 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_27 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_26 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_25 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_24 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_23 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_22 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_21 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_20 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_19 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_18 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_17 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_16 = GPIO_MODE_MGMT_STD_OUTPUT;

    reg_mprj_io_0  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_1  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_2  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_3  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_4  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_5  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_6  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_7  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;

    reg_mprj_io_8  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_9  =  GPIO_MODE_MGMT_STD_INPUT_NOPULL;
    reg_mprj_io_10 =  GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_11 =  GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_12 =  GPIO_MODE_USER_STD_OUTPUT;

     /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

    // Flag start of the test
    reg_mprj_datal = 0x00010000;
    reg_la2_oenb = reg_la2_iena = 0xFFFFFFFF;    // [95:64]

    // Flag stop ibex_core to program
    reg_mprj_datal = 0x00020000;

    uint32_t * sram = (uint32_t *) &reg_mprj_slave;

    //writting data to sram
    for (i = 0; i< pro_len-32;i++) {
        sram[i+32] = pro_data[i+32];
    }
    sram[2047] =0;
    // Flag run ibex_core
    reg_mprj_datal = 0x00030000;

    while (1) {
       if       (sram[2047] == 0xDEADBEEF)  reg_mprj_datal = 0x00040000; // simulation end with failed test
       else if  (sram[2047] == 0xCAFEBABE)  reg_mprj_datal = 0x00050000; // simulation end with successful test
    }
}   