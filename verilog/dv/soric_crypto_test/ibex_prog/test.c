// SPDX-FileCopyrightText: 
// 2021 Thinh Pham
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
#include <stdint.h>
#include "aes_common.h"

#define ROL32(x,n) (((x) << (n)) | ((x) >> (32 - (n))))
#define ROR32(x,n) (((x) >> (n)) | ((x) << (32 - (n))))
#define ROL64(x,n) (((x) << (n)) | ((x) >> (64 - (n))))
#define ROR64(x,n) (((x) >> (n)) | ((x) << (64 - (n))))

static uint32_t lfsr(uint32_t x)
{
  uint32_t bit = (x ^ (x >> 1)) & 1;
  return (x >> 1) | (bit << 30);
}

extern uint32_t test_aes32dsi1(uint32_t a, uint32_t b);
extern uint32_t test_aes32esi1(uint32_t a, uint32_t b);
extern uint32_t test_aes32dsmi1(uint32_t a, uint32_t b);
extern uint32_t test_aes32esmi1(uint32_t a, uint32_t b);


extern uint32_t test_sha256sum0(uint32_t a);
extern uint32_t test_sha256sum1(uint32_t a);
extern uint32_t test_sha256sig0(uint32_t a);
extern uint32_t test_sha256sig1(uint32_t a);

extern uint32_t test_sha512sum0r(uint32_t a, uint32_t b);
extern uint32_t test_sha512sum1r(uint32_t a, uint32_t b);
extern uint32_t test_sha512sig0l(uint32_t a, uint32_t b);
extern uint32_t test_sha512sig0h(uint32_t a, uint32_t b);
extern uint32_t test_sha512sig1l(uint32_t a, uint32_t b);
extern uint32_t test_sha512sig1h(uint32_t a, uint32_t b);


extern uint32_t test_ror(uint32_t a, uint32_t b);
extern uint32_t test_rol(uint32_t a, uint32_t b);
extern uint32_t test_ror7(uint32_t a);
extern uint32_t test_andn(uint32_t a, uint32_t b);
extern uint32_t test_orn(uint32_t a, uint32_t b);
extern uint32_t test_xnor(uint32_t a, uint32_t b);

extern uint32_t test_pack(uint32_t a, uint32_t b);
extern uint32_t test_packh(uint32_t a, uint32_t b);

extern uint32_t test_brev8(uint32_t a);
extern uint32_t test_rev8(uint32_t a);
extern uint32_t test_zip(uint32_t a);
extern uint32_t test_unzip(uint32_t a);

extern uint32_t test_xperm8(uint32_t a, uint32_t b);
extern uint32_t test_xperm4(uint32_t a, uint32_t b);

extern uint32_t test_clmul(uint32_t a, uint32_t b);
extern uint32_t test_clmulh(uint32_t a, uint32_t b);

uint32_t gold_aes32dsi(uint32_t a, uint32_t b, uint32_t bs){

    uint8_t     t0 = (b >> (8*bs)) & 0xFF;
    uint8_t      x = AES_DEC_SBOX[t0];
    uint32_t     r = x;

    r = (r << (8*bs)) | (r >> (32-8*bs));

    return (r ^ a);
}

uint32_t gold_aes32esi(uint32_t a, uint32_t b, uint32_t bs){
    uint8_t     t0 = (b >> (8*bs)) & 0xFF;
    uint8_t      x = AES_ENC_SBOX[t0];
    uint32_t     r = x;

    r = (r << (8*bs)) | (r >> (32-8*bs));

    return (r ^ a);
}

uint32_t gold_aes32dsmi(uint32_t a, uint32_t b, uint32_t bs){

    uint8_t     t0 = b >> (8*bs);
    uint8_t      x = AES_DEC_SBOX[t0];
    uint32_t     r ;

    r = (AES_GFMUL(x,0xb) << 24) |
        (AES_GFMUL(x,0xd) << 16) |
        (AES_GFMUL(x,0x9) <<  8) |
        (AES_GFMUL(x,0xe) <<  0) ;

    r = (r << (8*bs)) | (r >> (32-8*bs));

    return (r ^ a);
}

uint32_t gold_aes32esmi(uint32_t a, uint32_t b, uint32_t bs){
    uint8_t     t0 = (b >> (8*bs)) & 0xFF;
    uint8_t      x = AES_ENC_SBOX[t0];
    uint32_t     r = x;

    r = (AES_GFMUL(x,3) << 24) |
        (          x    << 16) |
        (          x    <<  8) |
        (AES_GFMUL(x,2) <<  0) ;

    r = (r << (8*bs)) | (r >> (32-8*bs));
    return (r ^ a);
}


uint32_t gold_sha256sum0(uint32_t a){
    uint32_t     r = ROR32(a,  2) ^ ROR32(a,13) ^ ROR32(a, 22);
    return r;
}
uint32_t gold_sha256sum1(uint32_t a){
    uint32_t     r = ROR32(a,  6) ^ ROR32(a,11) ^ ROR32(a, 25);
    return r;
}
uint32_t gold_sha256sig0(uint32_t a){
    uint32_t     r = ROR32(a,  7) ^ ROR32(a,18) ^ (a >> 3);
    return r;
}
uint32_t gold_sha256sig1(uint32_t a){
    uint32_t     r = ROR32(a, 17) ^ ROR32(a,19) ^ (a >> 10);
    return r;
}


uint32_t gold_sha512sum0r(uint32_t a, uint32_t b){
    uint32_t     r = (a << 25) ^ (a << 30) ^ (a >> 28) ^
                     (b >>  7) ^ (b >>  2) ^ (b <<  4);
    return r;
}
uint32_t gold_sha512sum1r(uint32_t a, uint32_t b){
    uint32_t     r = (a << 23) ^ (a >> 14) ^ (a >> 18) ^
                     (b >>  9) ^ (b << 18) ^ (b << 14);
    return r;
}
uint32_t gold_sha512sig0l(uint32_t a, uint32_t b){
    uint32_t     r = (a >>  1) ^ (a >>  7) ^ (a >>  8) ^
                     (b << 31) ^ (b << 25) ^ (b << 24);
    return r;
}
uint32_t gold_sha512sig0h(uint32_t a, uint32_t b){
    uint32_t     r = (a >>  1) ^ (a >>  7) ^ (a >>  8) ^
                     (b << 31) ^             (b << 24);
    return r;
}
uint32_t gold_sha512sig1l(uint32_t a, uint32_t b){
    uint32_t     r = (a <<  3) ^ (a >>  6) ^ (a >> 19) ^
                     (b >> 29) ^ (b << 26) ^ (b << 13);
    return r;
}
uint32_t gold_sha512sig1h(uint32_t a, uint32_t b){
    uint32_t     r = (a <<  3) ^ (a >>  6) ^ (a >> 19) ^
                     (b >> 29) ^             (b << 13);
    return r;
}

uint32_t gold_ror(uint32_t a, uint32_t b){
    return ROR32(a, b & 0x0000001F);
}

uint32_t gold_rol(uint32_t a, uint32_t b){
    return ROL32(a, b & 0x0000001F);
}

uint32_t gold_ror7(uint32_t a){
    return ROR32(a,7);
}

uint32_t gold_andn(uint32_t a, uint32_t b){
    return (a & (~b));
}

uint32_t gold_orn(uint32_t a, uint32_t b){
    return (a | (~b));
}

uint32_t gold_xnor(uint32_t a, uint32_t b){
    return (a ^ (~b));
}

uint32_t gold_pack(uint32_t a, uint32_t b){
    return (b << 16) | (a & 0x0000FFFF);
}

uint32_t gold_packh(uint32_t a, uint32_t b){
    return ((b << 8) | (a & 0x000000FF)) & 0x0000FFFF;
}


uint32_t gold_brev8(uint32_t a){
    uint32_t  x;
    x = ((a & 0x55555555) <<  1) | ((a & 0xAAAAAAAA) >>  1);
    x = ((x & 0x33333333) <<  2) | ((x & 0xCCCCCCCC) >>  2);
    x = ((x & 0x0F0F0F0F) <<  4) | ((x & 0xF0F0F0F0) >>  4);
    return x;
}


uint32_t gold_rev8(uint32_t a){
    uint32_t  x;
    x = ((a & 0x00FF00FF) <<  8) | ((a & 0xFF00FF00) >>  8);
    x = ((x & 0x0000FFFF) << 16) | ((x & 0xFFFF0000) >> 16);   
    return x;
}

uint32_t shfl_st(uint32_t src, uint32_t maskL, uint32_t maskR, int N)
{
    uint32_t x = src & ~(maskL | maskR);
    x |= ((src << N) & maskL) | ((src >> N) & maskR);
    return x;
}

uint32_t gold_unzip(uint32_t a){
    uint32_t  x=a;
    x = shfl_st(x, 0x44444444, 0x22222222, 1);
    x = shfl_st(x, 0x30303030, 0x0C0C0C0C, 2);
    x = shfl_st(x, 0x0F000F00, 0x00F000F0, 4);
    x = shfl_st(x, 0x00FF0000, 0x0000FF00, 8);
    return x;
}

uint32_t gold_zip(uint32_t a){
    uint32_t  x=a;
    x = shfl_st(x, 0x00FF0000, 0x0000FF00, 8);
    x = shfl_st(x, 0x0F000F00, 0x00F000F0, 4);
    x = shfl_st(x, 0x30303030, 0x0C0C0C0C, 2);
    x = shfl_st(x, 0x44444444, 0x22222222, 1);
    return x;
}

static inline uint32_t xperm32(uint32_t a, uint32_t b, int sz_log2)
{
	uint32_t r = 0;
	uint32_t sz = 1LL << sz_log2;
	uint32_t mask = (1LL << sz) - 1;
	for (int i = 0; i < 32; i += sz) {
		uint32_t pos = ((b >> i) & mask) << sz_log2;
		if (pos < 32)
			r |= ((a >> pos) & mask) << i;
	}
	return r;
}

uint32_t gold_xperm8(uint32_t a,uint32_t b)
	{ return xperm32(a, b, 3); }

uint32_t gold_xperm4(uint32_t a,uint32_t b)
	{ return xperm32(a, b, 2); }

uint32_t gold_clmul(uint32_t a,uint32_t b){
    uint32_t x = 0;
    for (int i = 0; i < 32; i++)
        if ((b >> i) & 1) x ^= a << i;
    return x;
}

uint32_t gold_clmulh(uint32_t a,uint32_t b){
    uint32_t x = 0;
    for (int i = 1; i < 32; i++)
        if ((b >> i) & 1) x ^= a >> (32-i);
    return x;
}

//void error_log(uint32_t expect, uint32_t result){
//puts("Expected: "); puthex(expect); puts(", got:"); puthex(result); putchar('\n');
//}
int fail;
uint32_t expect, result;

extern unsigned int _tohost;

int main() {
    fail = 0;

    uint32_t lhs = 0x23456789;
    uint32_t rhs = 0x01020304; 

    //puts("# RV32Zkn Instruction Test \n");
    for (int i=0;i<20;i++){
    // puts("lhs: "); puthex(lhs); puts(", rhs:"); puthex(rhs); putchar('\n');

/*
    // aes32dsi1    
    result = test_aes32dsi1(lhs, rhs);
    expect = gold_aes32dsi( lhs, rhs, 1);

    if(result != expect) {
        //puts("test_aes32dsi1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // aes32esi1
    result = test_aes32esi1(lhs, rhs);
    expect = gold_aes32esi( lhs, rhs, 1);

    if(result != expect) {
        //puts("test_aes32esi1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // aes32dsmi1
    result = test_aes32dsmi1(lhs, rhs);
    expect = gold_aes32dsmi( lhs, rhs, 1);

    if(result != expect) {
        //puts("test_aes32dsmi1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // aes32esmi1
    result = test_aes32esmi1(lhs, rhs);
    expect = gold_aes32esmi( lhs, rhs, 1);

    if(result != expect) {
        //puts("test_aes32esmi1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }
*/

    // sha256sum0
    result = test_sha256sum0(lhs);
    expect = gold_sha256sum0(lhs);

    if(result != expect) {
        //puts("test_sha256sum0 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha256sum1
    result = test_sha256sum1(lhs);
    expect = gold_sha256sum1(lhs);

    if(result != expect) {
        //puts("test_sha256sum1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha256sig0
    result = test_sha256sig0(lhs);
    expect = gold_sha256sig0(lhs);

    if(result != expect) {
        //puts("test_sha256sig0 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha256sig1
    result = test_sha256sig1(lhs);
    expect = gold_sha256sig1(lhs);

    if(result != expect) {
        //puts("test_sha256sig1 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha512sum0r
    result = test_sha512sum0r(lhs, rhs);
    expect = gold_sha512sum0r(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sum0r [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha512sum1r
    result = test_sha512sum1r(lhs, rhs);
    expect = gold_sha512sum1r(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sum1r [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha512sig0l
    result = test_sha512sig0l(lhs, rhs);
    expect = gold_sha512sig0l(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sig0l [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }
    // sha512sig0h
    result = test_sha512sig0h(lhs, rhs);
    expect = gold_sha512sig0h(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sig0h [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // sha512sig1l
    result = test_sha512sig1l(lhs, rhs);
    expect = gold_sha512sig1l(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sig1l [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }
    // sha512sig1h
    result = test_sha512sig1h(lhs, rhs);
    expect = gold_sha512sig1h(lhs, rhs);

    if(result != expect) {
        //puts("test_sha512sig1h [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }


    // ror    
    result = test_ror(lhs, rhs);
    expect = gold_ror(lhs, rhs);

    if(result != expect) {
        //puts("test_ror [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // rol
    result = test_rol(lhs, rhs);
    expect = gold_rol(lhs, rhs);

    if(result != expect) {
        //puts("test_rol [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // ror7
    result = test_ror7(lhs);
    expect = gold_ror7(lhs);

    if(result != expect) {
        //puts("test_ror7 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // andn
    result = test_andn(lhs, rhs);
    expect = gold_andn(lhs, rhs);

    if(result != expect) {
        //puts("test_andn [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // orn
    result = test_orn(lhs, rhs);
    expect = gold_orn(lhs, rhs);

    if(result != expect) {
        //puts("test_orn [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // xnor
    result = test_xnor(lhs, rhs);
    expect = gold_xnor(lhs, rhs);

    if(result != expect) {
        //puts("test_xnor [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // pack
    result = test_pack(lhs, rhs);
    expect = gold_pack(lhs, rhs);

    if(result != expect) {
        //puts("test_pack [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // packh
    result = test_packh(lhs, rhs);
    expect = gold_packh(lhs, rhs);

    if(result != expect) {
        //puts("test_packh [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // brev8
    result = test_brev8(lhs);
    expect = gold_brev8(lhs);

    if(result != expect) {
        //puts("test_brev8 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // rev8
    result = test_rev8(lhs);
    expect = gold_rev8(lhs);

    if(result != expect) {
        //puts("test_rev8 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // zip
    result = test_zip(lhs);
    expect = gold_zip(lhs);

    if(result != expect) {
        //puts("test_zip [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // unzip
    result = test_unzip(lhs);
    expect = gold_unzip(lhs);

    if(result != expect) {
        //puts("test_unzip [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // xperm8
   result = test_xperm8(lhs,rhs);
   expect = gold_xperm8(lhs,rhs);

    if(result != expect) {
        //puts("test_xperm8 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }
    // xperm4
    result = test_xperm4(lhs,rhs);
    expect = gold_xperm4(lhs,rhs);

    if(result != expect) {
        //puts("test_xperm4 [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    // clmul
    result = test_clmul(lhs,rhs);
    expect = gold_clmul(lhs,rhs);

    if(result != expect) {
        //puts("test_clmul [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }
    // clmulh
    result = test_clmulh(lhs,rhs);
    expect = gold_clmulh(lhs,rhs);

    if(result != expect) {
        //puts("test_clmulh [FAIL]\n");
        //error_log(expect,result);
        fail = 1;
    }

    rhs = lfsr(lhs);
    lhs = lfsr(rhs);
    }

    if (fail == 0) _tohost = 0XCAFEBABE;    //Pass the test
    else           _tohost = 0XDEADBEEF;    //The test fails

    return fail;

}

