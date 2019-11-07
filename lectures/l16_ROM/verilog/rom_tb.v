`timescale 1ns / 1ps

module rom_tb;

   reg  [3:0]addr;
   wire  [5:0]decoder;

   rom  zica(
                       .addr(addr),
                       .decoder(decoder)
                   
		    );

   initial begin

      $dumpfile("dump.vcd");
      $dumpvars;
      
      addr = 6'd8;
      
   end
   
  
 
endmodule

