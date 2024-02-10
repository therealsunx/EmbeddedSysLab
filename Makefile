all: result.vcd

result.vcd: seq1011detector.vhdl seq1011detector_tb.vhdl 
	ghdl -a seq1011detector.vhdl
	ghdl -a seq1011detector_tb.vhdl
	ghdl -e seq1011detector_tb
	ghdl -r seq1011detector_tb --vcd=result.vcd

clean:
	rm -rf result.vcd