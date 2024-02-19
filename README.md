# Embedded System VHDL

This repository contains several modules related to embedded system. Each module serves a specific purpose and is organized into folders for better management. The modules include:

## Table of contents

- [Modules] (#modules)
- [Dependencies] (#dependencies)
- [How To Run] (#how-to-run)

## Modules

Each of the following modules is in separate directory in project with all their related files.

* decoder: Module for decoding signals 
* demux: Demultiplexer module.
* fulladder: Full adder module.
* gcd_: Module for finding the greatest common divisor.
* jk: Module related to JK flip-flops.
* lcm: Module for finding the least common multiple.
* mux: Multiplexer module.
* seq: Module related to sequential logic (detection of 1011 sequence).

## Dependencies
To run the code in this repository, the following dependencies are required:

### GHDL
GHDL is the compiler for VHDL code. To install this : 
    * For Linux
        Use this Command : `sudo <package manager> install ghdl`
        E.g. `sudo apt install ghdl` , `sudo yum install ghdl`
    * For Windows
        Follow the guide on [GHDL github repo](https://github.com/ghdl/ghdl)

### GTK-WAVE
GTK-WAVE is the program for viewing the input output waveforms. 
    * For Linux
        Use the command : `sudo <package-manager> install gtkwave`
        E.g `sudo apt install gtkwave`
    * For Windows :
        Follow the instructions on the [GTKwave website] (https://gtkwave.sourceforge.net)

## How To Run

Each module is in it's own folder and includes a test bench file with the naming convention name_tb.vhdl. Use these test benches to run and test the corresponding modules. The Makefile in the respective directories contain the commands to compile and run the modules and then export a waveform file.

Example (running the decoder): 

```bash
ghdl -a ./decoder/decoder3x8.vhdl
ghdl -a ./decoder/decoder3x8_tb.vhdl
ghdl -e decoder3x8
ghdl -r decoder3x8 --vcd=./decoder/result.vcd
```

```bash
gtkwave ./decoder/result.vcd
```

Additional Maintenance
Certain modules have received additional maintenance updates. Please refer to the respective module folders for more information.

All of the screenshots of the output waveforms of each module is inside the 'Outputs' folder.
