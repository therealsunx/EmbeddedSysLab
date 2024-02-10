all: result.vcd

result.vcd: fullwithhalfadder.vhdl fullwithhalfadder_tb.vhdl
	ghdl -a fullwithhalfadder.vhdl
	ghdl -a fullwithhalfadder_tb.vhdl
	ghdl -e FullAdder_tb
	ghdl -r FullAdder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd