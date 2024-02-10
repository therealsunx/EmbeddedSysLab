all: result.vcd

result.vcd: decoder3x8.vhdl decoder3x8_tb.vhdl
	ghdl -a decoder3x8.vhdl
	ghdl -a decoder3x8_tb.vhdl
	ghdl -e decoder3x8_tb
	ghdl -r decoder3x8_tb --vcd=result.vcd

clean:
	rm -rf result.vcd