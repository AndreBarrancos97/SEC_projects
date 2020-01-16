top:  full_adder.v full_adder_4bits_XOR.v full_adder_8bits_XOR.v xcomplement_to_2.v signed_shfit_mult.v
	iverilog -o top full_adder.v full_adder_4bits_XOR.v full_adder_8bits_XOR.v xcomplement_to_2.v signed_shfit_mult.v signed_shift_mult_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
