all: result.vcd

result.vcd: fulladder.vhdl fulladder_tb.vhdl 
	ghdl -a --std=08 fulladder.vhdl
	ghdl -a fulladder_tb.vhdl
	ghdl -e fulladder_tb
	ghdl -r fulladder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
