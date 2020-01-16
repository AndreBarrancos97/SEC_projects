top:  full_adder.v multiply_4bits_XOR.v multiply_8bits_XOR.v multiply_xcomplement_to_2.v signed_shfit_mult.v signed_shift_mult_tb.v
	iverilog -o top full_adder.v multiply_4bits_XOR.v multiply_8bits_XOR.v multiply_xcomplement_to_2.v signed_shfit_mult.v signed_shift_mult_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
