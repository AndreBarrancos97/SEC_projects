`timescale 1ns/1ps

module register (//flip-flop de 32bits
  input		    clk,
  input             en,
  input    [31:0] data_in,   
  output reg [31:0] data_out    
);


always @ (posedge clk)//entra no ciclo quando o relógio está a ascender
   if (en == 1'd1) // se enable ativo, então o data_out = data_in
     data_out <= data_in;

endmodule
