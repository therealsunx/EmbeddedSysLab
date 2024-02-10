all: result.vcd

result.vcd: lcm.vhdl lcm_tb.vhdl
	ghdl -a lcm.vhdl
	ghdl -a lcm_tb.vhdl
	ghdl -e lcm_fsm_tb
	ghdl -r lcm_fsm_tb --vcd=result.vcd

clean:
	rm -rf result.vcd