module nios_led2_top 
   (
    input wire clk, 
    input wire [9:0] sw,
    input wire [3:0] key,
    output wire [7:0] ledg,
    output wire [9:0] ledr,
    output wire [6:0] hex3, hex2, hex1, hex0,
    output wire [17:0] sram_addr,
    inout wire [15:0] sram_dq,
    output wire sram_ce_n, sram_oe_n, sram_we_n,
    output wire sram_lb_n, sram_ub_n
   );

   // signal declaration
   wire [31:0] sseg;
   
   // body
   // instantiate nios 
   nios_led2 nios_cpu_unit
     (.clk(clk),
      .reset_n(1'b1),
      .in_port_to_the_switch(sw),
      .in_port_to_the_btn(key),
      .out_port_from_the_ledg(ledg),
      .out_port_from_the_ledr(ledr),
      .out_port_from_the_sseg(sseg),
      .sram_addr_from_the_sram(sram_addr),
      .sram_ce_n_from_the_sram(sram_ce_n),
      .sram_dq_to_and_from_the_sram(sram_dq),
      .sram_lb_n_from_the_sram(sram_lb_n),
      .sram_oe_n_from_the_sram(sram_oe_n),
      .sram_ub_n_from_the_sram(sram_ub_n),
      .sram_we_n_from_the_sram(sram_we_n)
    );
    
    // output assignment
    assign hex3 = sseg[30:24];       
    assign hex2 = sseg[22:16];       
    assign hex1 = sseg[14:8];       
    assign hex0 = sseg[6:0];       
endmodule

