module data_mem(address, clk, write_data, wren, read_data);
   input [7:0] address;
   input clk, wren;
   input [7:0] write_data;
   output [7:0] read_data;
   reg [7:0] d_mem [0:255];

   always @(posedge clk)
     if(wren == 0) d_mem[address] <= write_data;
   assign read_data = d_mem[address];
endmodule // data_mem
