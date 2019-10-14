`timescale 1ns/1ps

module full_adder(
  input  a,
  input  b,
  input  c,  
  output s,
  output p,
  output g
);

  
   assign p = a ^ b;
   assign s = p ^ c;
   assign g = a & b;
   

endmodule
