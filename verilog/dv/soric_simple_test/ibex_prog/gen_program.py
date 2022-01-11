import io
import sys
import subprocess

binname = str(sys.argv[1])
#binname ='/home/thinhpham/Documents/SCARV/icesoc_project/verilog/dv/wb_send_riscv_program/ibex_prog/test/test.bin'
binfile = open(binname, 'rb')
pro_data = binfile.read()
pro_len = int(len(pro_data)/4)
binfile.close()

fileout = str(sys.argv[2])
#fileout ='/home/thinhpham/Documents/SCARV/icesoc_project/verilog/dv/wb_send_riscv_program/ibex_prog/test.h'
hfile   = open(fileout, 'w')

hfile.write("uint32_t pro_len = " + str(pro_len) + "; \n")
hfile.write("const uint32_t pro_data[" + str(pro_len) +'] ={ \n')
for i in range(pro_len):
    if i != pro_len-1:
        hfile.write("       " + hex(int.from_bytes(pro_data[4*i:4*(i+1)], byteorder='little')) + ', \n')
    else :
        hfile.write("       " + hex(int.from_bytes(pro_data[4*i:4*(i+1)], byteorder='little')) + ' }; \n')

hfile.close()

