`timescale 1ns/1ps

module counter (
  input 	   clk,
  input 	   rst,
  input 	   en,
  output reg [1:0] data_out
);

   
   always @ (posedge clk) begin //entra no ciclo quando o relógio está a ascender
      if (rst == 1'b1) begin // se rst = 1,então data_out = 0
	 data_out <= 2'b0;
      end
      else if (en == 1'b1 ) begin// se o enable estiver activo e se o data_out não chegou ao limite, incrementa mais 1 ao data_out
	 if(data_out != 2'b11)
	    data_out <= data_out+1'b1;
      end
   end

endmodule
