`timescale 1ns / 1ps

module fulladder4_tb;

   reg  [3:0] a;
   reg  [3:0] b;
   reg 	      ci;

   wire [3:0] sum;
   wire       co;

   full_adder_4bits zica(
		    .a(a),
		    .b(b),
		    .ci(ci),
		    .co(co),
		    .sum(sum)
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();

      a=2;
      b=2;
      ci=0;

      $finish;
      
    end 
// initial begin
   
endmodule

