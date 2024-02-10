all: result.vcd

result.vcd: mux2x1.vhdl mux2x1_tb.vhdl
	ghdl -a mux2x1.vhdl
	ghdl -a mux2x1_tb.vhdl
	ghdl -e mux_tb
	ghdl -r mux_tb --vcd=result.vcd

clean:
	rm -rf result.vcd