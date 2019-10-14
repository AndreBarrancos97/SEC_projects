`timescale 1ns / 1ps

module fulladder4_tb;

   reg  [3:0] a;
   reg  [3:0] b;
   reg 	      c;

   wire [3:0] s;
   wire       c4;

   top  zica(
		    .a(a),
		    .b(b),
		    .c(c),
		    .s(s),
		    .c4(c4)
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();

      a=2;
      b=2;
      c=0;

      $finish;
      
    end 
// initial begin
   
endmodule

