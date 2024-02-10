all: result.vcd

result.vcd: fullwithhalfadder.vhdl fullwithhalfadder_tb.vhdl 
	ghdl -a fullwithhalfadder.vhdl
	ghdl -a fullwithhalfadder_tb.vhdl
	ghdl -e fullwithhalfadder_tb
	ghdl -r fullwithhalfadder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd