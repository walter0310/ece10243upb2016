module fifo_ram
   #(
    parameter DATA_WIDTH=8,    // number of bits in a word
              ADDR_WIDTH=10  // number of address bits
   )
   (
    input wire clk, reset,
    input wire rd, wr,
    input wire [DATA_WIDTH-1:0] w_data,
    output wire empty, full,
    output wire [DATA_WIDTH-1:0] r_data
   );

   //signal declaration
   wire [ADDR_WIDTH-1:0] w_addr, r_addr_next;
   wire wr_en, full_tmp;

   // body
   // write enabled only when FIFO is not full
   assign wr_en = wr & ~full_tmp;
   assign full = full_tmp;
   
   // instantiate fifo control unit
   fifo_ctrl #(.ADDR_WIDTH(ADDR_WIDTH)) c_unit
      (.clk(clk), .reset(reset), .rd(rd), .wr(wr), .empty(empty), 
       .full(full_tmp), .w_addr(w_addr), 
       .r_addr(), .r_addr_next(r_addr_next));

   // instantiate synchronous SRAM
   altera_dual_port_ram_simple 
      #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) ram_unit
      (.clk(clk), .we(wr_en), .w_addr(w_addr), .r_addr(r_addr_next), 
       .d(w_data), .q(r_data));
endmodule

