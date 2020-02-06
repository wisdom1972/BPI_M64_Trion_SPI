`timescale 1ns/1ps
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

module top_tb;

parameter PERIOD  = 10;

wire clk;
wire locked;
clk_gen
 #(
    .PERIOD       (PERIOD),
    .REST_VALUE   (1'b0  )
)clk_gen
   (
    .clk  (clk),
    .rstn (locked)
    );

	wire                   sclk;
	wire                   ss_n;
	wire                   mosi;
	wire                   miso;

	reg                    din_en;
	wire [31:0]            din;
	wire                   dout_en;
	wire [15:0]            dout;
	
	// assign din_en = 1;
	assign din  = 32'h12345678;
  spi_master_sim spi_master_sim //SPI0
   (
		 
		 .sclk (sclk),
	     .ss_n (ss_n),
	     .mosi (mosi),
	     .miso (1'b0),
		 
         .din_en (din_en),
		 .din    (din),
		 .dout_en(dout_en),
		 .dout   (dout)
	 
    );
wire data_en_o;
wire [7:0]data_o;

spi_slave spi_slave
(
  //
  .clk  (clk),
  
  .spi_clk(sclk),
  .spi_ss (ss_n),
  .mosi   (mosi),
  
  .data_en_o(data_en_o),
  .data_o   (data_o)
);

  
initial begin
din_en = 0;
#500 din_en = 1;
#600 din_en = 0;
wait(dout_en); 
#5000 $stop;  
 end
endmodule
