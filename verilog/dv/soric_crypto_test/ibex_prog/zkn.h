// Copyright (C) 2021 SCARV project <info@scarv.org>
//
// Use of this source code is restricted per the MIT license, a copy of which 
// can be found at https://opensource.org/licenses/MIT (or should be included 
// as LICENSE.txt within the associated archive or repository).

#ifndef __ZKN
#define __ZKN

// Zknh =======================================================================

// 000 1000 | 00000 | rs1 | 001 | rd | 001 0011
.macro sha256sum0 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x100
.endm
// 000 1000 | 00001 | rs1 | 001 | rd | 001 0011
.macro sha256sum1 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x101
.endm
// 000 1000 | 00010 | rs1 | 001 | rd | 001 0011
.macro sha256sig0 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x102
.endm
// 000 1000 | 00011 | rs1 | 001 | rd | 001 0011
.macro sha256sig1 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x103
.endm
// 000 1000 | 00100 | rs1 | 001 | rd | 001 0011
.macro sha512sum0 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x104
.endm
// 000 1000 | 00101 | rs1 | 001 | rd | 001 0011
.macro sha512sum1 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x105
.endm
// 000 1000 | 00110 | rs1 | 001 | rd | 001 0011
.macro sha512sig0 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x106
.endm
// 000 1000 | 00111 | rs1 | 001 | rd | 001 0011
.macro sha512sig1 rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x107
.endm

// 010 1000 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sum0r rd, rs1, rs2
.insn r 0x33, 0x0, 0x28, \rd, \rs1, \rs2
.endm
// 010 1001 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sum1r rd, rs1, rs2
.insn r 0x33, 0x0, 0x29, \rd, \rs1, \rs2
.endm
// 010 1010 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sig0l rd, rs1, rs2
.insn r 0x33, 0x0, 0x2A, \rd, \rs1, \rs2
.endm
// 010 1011 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sig1l rd, rs1, rs2
.insn r 0x33, 0x0, 0x2B, \rd, \rs1, \rs2
.endm
// 010 1110 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sig0h rd, rs1, rs2
.insn r 0x33, 0x0, 0x2E, \rd, \rs1, \rs2
.endm

// 010 1111 | rs2   | rs1 | 000 | rd | 011 0011
.macro sha512sig1h rd, rs1, rs2
.insn r 0x33, 0x0, 0x2F, \rd, \rs1, \rs2
.endm

// ============================================================================

// Zkne========================================================================

// bs[1:0]1 0001 |  rs2   |  rs1  | 000 | rd | 0110011
.macro aes32esi    rd, rs1, rs2, bs
.insn r 0x33, 0x0, (\bs << 5) + 0x11, \rd, \rs1, \rs2
.endm
// bs[1:0]1 0011 |  rs2   |  rs1  | 000 | rd | 0110011
.macro aes32esmi    rd, rs1, rs2, bs
.insn r 0x33, 0x0, (\bs << 5) + 0x13, \rd, \rs1, \rs2
.endm
//      001 1001 |  rs2   |  rs1  | 000 | rd | 0010011 
.macro aes64es   rd, rs1, rs2
.insn r 0x33, 0x0,              0x19, \rd, \rs1, \rs2
.endm
//      001 1011 |  rs2   |  rs1  | 000 | rd | 0110011 
.macro aes64esm  rd, rs1, rs2
.insn r 0x33, 0x0,              0x1B, \rd, \rs1, \rs2
.endm

//     0011 0001 rnum[3:0]|  rs1  | 001 | rd | 0010011
.macro aes64ks1i  rd, rs1, rnum
.insn i 0x13, 0x1,                    \rd, \rs1, (0x31 << 4) + \rnum
.endm
//      011 1111 |  rs2   |  rs1  | 000 | rd | 0110011
.macro aes64ks2 rd, rs1, rs2
.insn r 0x33, 0x0,              0x3F, \rd, \rs1, \rs2
.endm

// ============================================================================

// Zknd =======================================================================

// bs[1:0]1 0101 |  rs2   |  rs1  | 000 | rd | 0110011
.macro aes32dsi    rd, rs1, rs2, bs
.insn r 0x33, 0x0, (\bs << 5) + 0x15, \rd, \rs1, \rs2
.endm
// bs[1:0]1 0111 |  rs2   |  rs1  | 000 | rd | 0110011
.macro aes32dsmi    rd, rs1, rs2, bs
.insn r 0x33, 0x0, (\bs << 5) + 0x17, \rd, \rs1, \rs2
.endm
//      001 1101 |  rs2   |  rs1  | 000 | rd | 0110011 
.macro aes64ds   rd, rs1, rs2
.insn r 0x33, 0x0,              0x1D, \rd, \rs1, \rs2
.endm
//      001 1111 |  rs2   |  rs1  | 000 | rd | 0110011 
.macro aes64dsm  rd, rs1, rs2
.insn r 0x33, 0x0,              0x1F, \rd, \rs1, \rs2
.endm
//      0011 0000 0000    |  rs1  | 001 | rd | 0010011 
.macro aes64im   rd, rs1
.insn i 0x13, 0x1,                    \rd, \rs1, 0x300
.endm

// ============================================================================

// Zkb ========================================================================

// 011 0000 | rs2   | rs1 | 101 | rd | 0110011
.macro ror    rd, rs1, rs2
.insn r 0x33, 0x5, 0x30, \rd, \rs1, \rs2
.endm
// 011 0000 | rs2   | rs1 | 001 | rd | 0110011
.macro rol    rd, rs1, rs2
.insn r 0x33, 0x1, 0x30, \rd, \rs1, \rs2
.endm
// 011 0000 | shamt | rs1 | 101 | rd | 0010011 (32-bit)
.macro rori   rd, rs1, shamt
.insn i 0x13, 0x5, \rd, \rs1, \shamt + ( 0x30 << 5 )
.endm
// 011 0000 | rs2 | rs1   | 101 | rd | 0111011
.macro rorw  rd, rs1, rs2
.insn r 0x3B, 0x5, 0x30, \rd, \rs1, \rs2
.endm

// 010 0000 | rs2 | rs1   | 111 | rd | 0110011
.macro andn   rd, rs1, rs2
.insn r 0x33, 0x7, 0x20, \rd, \rs1, \rs2
.endm
// 010 0000 | rs2 | rs1   | 111 | rd | 0110011
.macro  orn   rd, rs1, rs2
.insn r 0x33, 0x6, 0x20, \rd, \rs1, \rs2
.endm
// 010 0000 | rs2 | rs1   | 111 | rd | 0110011
.macro xnor   rd, rs1, rs2
.insn r 0x33, 0x4, 0x20, \rd, \rs1, \rs2
.endm
// 000 0100 | rs2 | rs1   | 100 | rd | 0110011
.macro pack   rd, rs1, rs2
.insn r 0x33, 0x4, 0x04, \rd, \rs1, \rs2
.endm
// 000 0100 | rs2 | rs1   | 100 | rd | 0110011
.macro packh  rd, rs1, rs2
.insn r 0x33, 0x7, 0x04, \rd, \rs1, \rs2
.endm

// 0110 1000 0111 | rs1   | 101 | rd | 0010011
.macro brev8  rd, rs1
.insn i 0x13, 0x5, \rd, \rs1, 0x687
.endm
// 0110 1001 1000 | rs1   | 101 | rd | 0010011 (32-bit)
.macro  rev8  rd, rs1
.insn i 0x13, 0x5, \rd, \rs1, 0x698
.endm

// 0000 1000 1111 | rs1   | 001 | rd | 0010011
.macro   zip rd, rs1
.insn i 0x13, 0x1, \rd, \rs1, 0x08F
.endm
// 0000 1000 1111 | rs1   | 101 | rd | 0010011
.macro unzip rd, rs1
.insn i 0x13, 0x5, \rd, \rs1, 0x08F
.endm

// ============================================================================

// Zkc ========================================================================

// 000 0101 | rs2   | rs1 | 001 | rd | 011 0011
.macro clmul rd, rs1, rs2
.insn r 0x33, 0x1, 0x05, \rd, \rs1, \rs2
.endm
// 000 0101 | rs2   | rs1 | 011 | rd | 011 0011
.macro clmulh rd, rs1, rs2
.insn r 0x33, 0x3, 0x05, \rd, \rs1, \rs2
.endm

// ============================================================================

// Zkx ========================================================================

// 001 0100 | rs2   | rs1 | 010 | rd | 011 0011
.macro xperm4 rd, rs1, rs2
.insn r 0x33, 0x2, 0x14, \rd, \rs1, \rs2
.endm
// 001 0100 | rs2   | rs1 | 100 | rd | 011 0011
.macro xperm8 rd, rs1, rs2
.insn r 0x33, 0x4, 0x14, \rd, \rs1, \rs2
.endm

// ============================================================================

#endif
