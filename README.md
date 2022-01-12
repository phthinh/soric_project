# Soric SoC

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

Soric (Source Opened RISC-V for Cryptography) is an open heterogeneous SoC targeting for application in cryptography and trusted devices. The SoC consists of two RISC-V cores, 4x2kB SRAM and Peripherals (e.g., UART, GPIO). One of the cores supports the RISC-V scalar cryptography extension V1.0.0 which is specified for cryptographic and security critical applications while the other core is responsible for the security non-critical applications.

   <p align="center">
   <img src="./bin/soric.png" width="50%" height="50%">
   </p>

   <p align="center">
   <img src="./bin/soc.png" width="50%" height="50%">
   </p>

