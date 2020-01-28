// DRAM of 4kB to make 32 bits we need 8 DRAMs in line => 32KB to make 64MB we need 2048 lines
module dram_module (
        input clk,
        input [9:0] addr,
        input [3:0] data_in,
        output [31:0] data_out,
        input we
);
genvar i;
generate
for (i=0; i<8; i=i+1) begin: dram
  dram dram0 (
    .clk(clk),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out[4*(i+1)-1 -: 4])
    );
end
endgenerate
endmodule