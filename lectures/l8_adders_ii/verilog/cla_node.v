`timescale 1ns/1ps

module cla_node (
  input [2:0] p,
  input [2:0] g,
  input       c,      
  output      P,
  output      G,
  output      c1
);

   
   assign  P = p[0] & p[1];
   
   assign  G = g[1] + p[1]*g[0];
   
   assign  c1 = g[0] + p[0]*c;
   

endmodule
