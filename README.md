# Source Opened RISC-V for Cryptography (Soric) System on Chip

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

<!--- -------------------------------------------------------------------- --->

## Overview
Soric is an open heterogeneous SoC targeting for application in cryptography and trusted devices. The SoC consists of two RISC-V cores, 4x2kB SRAM and Peripherals (e.g., UART, GPIO). One of the cores supports the RISC-V scalar cryptography extension V1.0.0 [1] which is specified for cryptographic and security critical applications while the other core is responsible for the security non-critical applications.

   <p align="left">
   <img src="./bin/soc.png" width="50%" height="50%">
   </p>

   <p align="left">
   <img src="./bin/soric.png" width="50%" height="50%">
   </p>

## Organisation

```
├── bin                  - scripts (e.g., environment configuration)
├── caravel              - contains the clone of the frontend management system for efabless user projects.
├── doc                  - consists of documents.
├── gds                  - Compressed gds file of the Soric layout.
├── openlane             - Scripts for implementing the macros and Soric using OpenLane tools.
├── verilog              - HDL codes and verifications
│   ├── dv               - the verification of integrating Soric into the Caravel system at RTL and Gate Level netlist
│   ├── gl               - Generated gate level netlists of Soric for verification
│   └── rtl              - verilog codes of Soric
└── others(def, lef,...) - contains other output files of the efabless user project flow.
```
## Quickstart

- For seting up the repository

  - Clone the repository and setup environment 
  
    ```sh
    git clone https://github.com/phthinh/soric_project.git ./soric_project
    cd ./soric_project
    ```
  
  - Fix paths of the env. variables in bin/conf.sh file suitable for your machine, and
  
    ```sh
    source bin/conf.sh   
    ```

- Refer to [README](docs/source/index.rst) for the efabless caravel user project documentation to:
  
  -  Install and integrate the caravel system
  -  Build the Sky130 PDK

- Run tests on Soric. Notes that Soric includes two cores of which functions are verified with more comprehensive tests on other repos. For example, the ibex core and crypto core are tested in lowrisc ibex [2], and crypto ibex [3]. Here are the tests for the integration of Soric into the caravel user project. 
  
  - To test memory access from the caravel systems to the Soric's srams
  
  at RTL level
  
  ```sh
  make -C verilog/dv/soric_mem_test
  ```
  
  at gate level

  ```sh
  make -C verilog/dv/soric_mem_test SIM=GL
  ```
  
  - To test downloading and running a simple program on Soric from the caravel system
  
  at RTL level
  
  ```sh
  make -C verilog/dv/soric_simple_test
  ```
  
  at gate level

  ```sh
  make -C verilog/dv/soric_simple_test SIM=GL
  ```
  
  - To test downloading and running a program testing some crypto instructions. 
  
  at RTL level
  
  ```sh
  make -C verilog/dv/soric_crypto_test
  ```
  
  at gate level

  ```sh
  make -C verilog/dv/soric_crypto_test SIM=GL
  ```

## References

[1] RISC-V Scalar Cryptography Extension Specification, https://github.com/riscv/riscv-crypto/releases/tag/v1.0.0-rc6-scalar/riscv-crypto-spec-scalar-1.0.0-rc6.pdf 

[2] https://github.com/lowRISC/ibex

[3] https://github.com/scarv/crypto-ibex-test
