This repository contains several modules related to embedded system. Each module serves a specific purpose and is organized into folders for better management. The modules include:

decoder: Module for decoding signals 
demux: Demultiplexer module.
fulladder: Full adder module.
gcd_: Module for finding the greatest common divisor.
jk: Module related to JK flip-flops.
lcm: Module for finding the least common multiple.
mux: Multiplexer module.
seq: Module related to sequential logic.

Dependencies
To run the code in this repository, the following dependencies are required:

ghdl: VHDL compiler/simulator.
gtkwave: Waveform viewer.
Running the Code

Each module is in it's own folder and includes a test bench file with the naming convention name_tb.vhdl. Use these test benches to run and test the corresponding modules. The Makefile in the respective directories contain the commands to compile and run the modules and then export a waveform file.

Additional Maintenance
Certain modules have received additional maintenance updates. Please refer to the respective module folders for more information.


