all: result.vcd

result.vcd: demultiplexer1_8.vhdl demultiplexer1_8_tb.vhdl
	ghdl -a demultiplexer1_8.vhdl
	ghdl -a demultiplexer1_8_tb.vhdl
	ghdl -e demultiplexer1_8_tb
	ghdl -r demultiplexer1_8_tb --vcd=result.vcd

clean:
	rm -rf result.vcd