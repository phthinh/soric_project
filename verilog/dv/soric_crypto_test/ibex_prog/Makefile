INC_DIRS = 
SRCS = test.c rv32zk.S

OUTH    = ../ibex_prog.h
OUTBIN  = $(work_dir)/test.bin
OUTPUT  = $(work_dir)/test.elf
DISASM  = $(work_dir)/test.disasm

all: $(OUTH) $(DISASM)

CCFLAGS+=-Os -march=rv32im -mabi=ilp32 -ffreestanding -nostartfiles -nostdlib -nodefaultlibs -fpic -Wl,-T link.ld crt.s

$(OUTPUT) : $(SRCS)
	mkdir -p $(work_dir)
	${GCC_PATH}/${GCC_PREFIX}-gcc  $^ $(CCFLAGS) $(INC_DIRS) -o $@ 

$(OUTBIN): $(OUTPUT)
	${GCC_PATH}/${GCC_PREFIX}-objcopy -O binary $< $@

$(OUTH): $(OUTBIN) 
	python3 gen_program.py $< $@	

$(DISASM) : $(OUTPUT)
	${GCC_PATH}/${GCC_PREFIX}-objdump -Dt $< > $@

clean:
	rm -rf $(work_dir)

.PHONY: clean
