#include    "zkn.h"
.text

.global test_aes32dsi1
.func   test_aes32dsi1
test_aes32dsi1:
    aes32dsi  a0, a0, a1, 1
    ret
.endfunc
	
.global test_aes32esi1
.func   test_aes32esi1
test_aes32esi1:
    aes32esi a0, a0, a1, 1
    ret
.endfunc

.global test_aes32dsmi1
.func   test_aes32dsmi1
test_aes32dsmi1:
    aes32dsmi a0, a0, a1, 1
    ret
.endfunc


.global test_aes32esmi1
.func   test_aes32esmi1
test_aes32esmi1:
    aes32esmi a0, a0, a1, 1
    ret
.endfunc


.global test_sha256sum0
.func   test_sha256sum0
test_sha256sum0:
    sha256sum0 a0, a0
    ret
.endfunc

.global test_sha256sum1
.func   test_sha256sum1
test_sha256sum1:
    sha256sum1 a0, a0
    ret
.endfunc

.global test_sha256sig0
.func   test_sha256sig0
test_sha256sig0:
    sha256sig0 a0, a0
    ret
.endfunc

.global test_sha256sig1
.func   test_sha256sig1
test_sha256sig1:
    sha256sig1 a0, a0
    ret
.endfunc

.global test_sha512sum0r
.func   test_sha512sum0r
test_sha512sum0r:
    sha512sum0r a0, a0, a1
    ret
.endfunc

.global test_sha512sum1r
.func   test_sha512sum1r
test_sha512sum1r:
    sha512sum1r a0, a0, a1
    ret
.endfunc

.global test_sha512sig0l
.func   test_sha512sig0l
test_sha512sig0l:
    sha512sig0l a0, a0, a1
    ret
.endfunc

.global test_sha512sig1l
.func   test_sha512sig1l
test_sha512sig1l:
    sha512sig1l a0, a0, a1
    ret
.endfunc

.global test_sha512sig0h
.func   test_sha512sig0h
test_sha512sig0h:
    sha512sig0h a0, a0, a1
    ret
.endfunc

.global test_sha512sig1h
.func   test_sha512sig1h
test_sha512sig1h:
    sha512sig1h a0, a0, a1
    ret
.endfunc

.global test_ror
.func   test_ror
test_ror:
    ror a0, a0, a1
    ret
.endfunc
	
.global test_rol
.func   test_rol
test_rol:
    rol a0, a0, a1
    ret
.endfunc

.global test_ror7
.func   test_ror7
test_ror7:
    rori a0, a0, 7
    ret
.endfunc

.global test_andn
.func   test_andn
test_andn:
    andn a0, a0, a1
    ret
.endfunc

.global test_orn
.func   test_orn
test_orn:
    orn a0, a0, a1
    ret
.endfunc

.global test_xnor
.func   test_xnor
test_xnor:
    xnor a0, a0, a1
    ret
.endfunc

.global test_pack
.func   test_pack
test_pack:
    pack a0, a0, a1
    ret
.endfunc

.global test_packh
.func   test_packh
test_packh:
    packh a0, a0, a1
    ret
.endfunc


.global test_brev8
.func   test_brev8
test_brev8:
    brev8 a0, a0
    ret
.endfunc

.global test_rev8
.func   test_rev8
test_rev8:
    rev8 a0, a0
    ret
.endfunc

.global test_zip
.func   test_zip
test_zip:
    zip a0, a0
    ret
.endfunc

.global test_unzip
.func   test_unzip
test_unzip:
    unzip a0, a0
    ret
.endfunc

.global test_xperm8
.func   test_xperm8
test_xperm8:
    xperm8 a0, a0, a1
    ret
.endfunc

.global test_xperm4
.func   test_xperm4
test_xperm4:
    xperm4 a0, a0,a1
    ret
.endfunc

.global test_clmul
.func   test_clmul
test_clmul:
    clmul a0, a0, a1
    ret
.endfunc

.global test_clmulh
.func   test_clmulh
test_clmulh:
    clmulh a0, a0,a1
    ret
.endfunc

