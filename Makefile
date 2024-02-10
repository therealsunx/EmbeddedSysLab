all: result.vcd

result.vcd: lcm.vhdl lcm_tb.vhdl 
	ghdl -a lcm.vhdl
	ghdl -a lcm_tb.vhdl
	ghdl -e lcm_tb
	ghdl -r lcm_tb --vcd=result.vcd

clean:
	rm -rf result.vcd