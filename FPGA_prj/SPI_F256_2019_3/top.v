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
  (* syn_preserve="TRUE" *)input spi_clk_i,
  (* syn_preserve="TRUE" *)input mosi_i,
  (* syn_preserve="TRUE" *)input spi_ss_i
);

  (* syn_preserve="TRUE" *)wire      data_en_o;
  (* syn_preserve="TRUE" *)wire [7:0]data_o   ;
  
  reg spi_clk,mosi,spi_ss;
  always@(posedge clk)begin
   if(spi_clk_i) spi_clk <= 1;
   else          spi_clk <= 0;
   if(mosi_i)    mosi <= 1;
   else          mosi <= 0;
   if(spi_ss_i)  spi_ss <= 1;
   else          spi_ss <= 0;
   
  end  
spi_slave spi_slave
(
  //
  .clk     (clk),
  .rstn     (rstn),
  .spi_clk (spi_clk),
  .mosi    (mosi),
  .spi_ss  (spi_ss),
  
  .data_en_o(data_en_o),
  .data_o   (data_o   )
);


endmodule
