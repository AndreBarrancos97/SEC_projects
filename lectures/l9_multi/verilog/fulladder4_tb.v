`timescale 1ns / 1ps

module fulladder4_tb;

   reg  [1:0] a;
   reg  [1:0] b;
 
   wire [3:0] s;
  

   top  zica(
		    .a(a),
		    .b(b),
		    .s(s)
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();

      a=3;
      b=2;
      

      $finish;
      
    end 
// initial begin
   
endmodule

