// SPDX-FileCopyrightText: 2021 Thinh Pham
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

`ifdef GL
    // Assume default net type to be wire because GL netlists don't have the wire definitions
    `default_nettype wire
`else
    `include "axi_uart.v"
    `include "inter_read.v"
    `include "inter.v"
    `include "peripheral.v"
    `include "sky130_sram_1kbyte_1rw1r_32x256_8.v"
    `include "uart_rx.v"
    `include "uart_to_mem.v"
    `include "uart_tx.v"
    `include "uart.v"
`endif
