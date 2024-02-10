all: result.vcd

result.vcd: jkflipflop.vhdl jkflipflop_tb.vhdl
	ghdl -a jkflipflop.vhdl
	ghdl -a jkflipflop_tb.vhdl
	ghdl -e jkflipflop_tb
	ghdl -r jkflipflop_tb --vcd=result.vcd

clean:
	rm -rf result.vcd