module fetch(pc, ins);
   input [31:0] pc;
   output [31:0] ins;
   reg [31:0] ins_mem [0:255];

   assign ins = ins_mem[pc];
   initial
     $readmemb("sample.asm", ins_mem[0:255]);

endmodule // fetch
