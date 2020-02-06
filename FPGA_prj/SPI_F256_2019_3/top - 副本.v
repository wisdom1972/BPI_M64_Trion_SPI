/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2018 Efinix Inc. All rights reserved.
//
// Dual Clock FIFO
//
//********************************
// Revisions:
// 0.0 Initial rev
//********************************

module top
(
  input clk,
  input rstn,
  (* syn_preserve="TRUE" *)input ila_a,
  (* syn_preserve="TRUE" *)input ila_b,
  (* syn_preserve="TRUE" *)input ila_c
//  (* syn_preserve="TRUE" *)input ila_d
);

  (* syn_preserve="TRUE" *)wire      data_en_o;
  (* syn_preserve="TRUE" *)wire [7:0]data_o   ;
  
  reg spi_clk,mosi,spi_ss;
  always@(posedge clk)begin
   if(ila_a) spi_clk <= 1;
   else      spi_clk <= 0;
   if(ila_b) mosi <= 1;
   else      mosi <= 0;
   if(ila_c) spi_ss <= 1;
   else      spi_ss <= 0;
   
  end  
spi_slave spi_slave
(
  //
  .clk     (clk),
  .rstn     (rstn),
  .spi_clk (ila_a),
  .mosi    (ila_b),
  .spi_ss  (ila_c),
  
  .data_en_o(data_en_o),
  .data_o   (data_o   )
);


endmodule
