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

int fail;
uint32_t expect, result;

extern unsigned int _tohost;

int main() {
    fail = 0;
    uint32_t lhs = 1;
    uint32_t rhs = 1; 
    result = lhs + rhs;
     
    if (result != 2) fail == 1;

    if (fail == 0) _tohost = 0XCAFEBABE;    //Pass the test
    else           _tohost = 0XDEADBEEF;    //The test fails

    return fail;

}

