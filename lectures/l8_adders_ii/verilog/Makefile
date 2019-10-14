top:  full_adder.v cla_node.v top.v fulladder4_tb.v 
	iverilog -o top full_adder.v cla_node.v top.v fulladder4_tb.v 
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
