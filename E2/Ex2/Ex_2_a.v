// DRAM of 4kB to make 32 bits we need 8 DRAMs in line => 32KB to make 64MB we need 2048 lines
module SRAM( 
               input  [7:0]datain,
               input [16:0]Addr, 
               input cs, 
               input we, 
               input read, 
               input clk,
               output reg [7:0]dataout
              );


reg [7:0] SRAM [7:0];

always @ (posedge clk)

begin

 if (cs == 1'b1) begin
  if (we == 1'b1 && read == 1'b0) begin

   SRAM [Addr] = datain;
  end
  else if (read == 1'b1 && we == 1'b0) begin
  
   dataout = SRAM [Addr]; 
  end
 end

end

endmodule