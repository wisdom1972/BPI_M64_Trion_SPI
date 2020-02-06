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

module sw_top_tb;

parameter PERIOD  = 10;
parameter CTSW_DWIDTH  = 24;

wire clk_100m;
wire clk_25m;
wire locked;
clk_gen
 #(
    .PERIOD       (PERIOD),
    .REST_VALUE   (1'b0  )
)clk_gen_100m
   (
    .clk  (clk_100m),
    .rstn (locked)
    );

reg [CTSW_DWIDTH-1:0]timer_data_l_i;
reg [CTSW_DWIDTH-1:0]timer_data_h_i;
wire timer_done_o;
		 
  timer 
  #( 
     .CTSW_DWIDTH   (24),
     .C_PULS_DWIDTH (4 )
  )timer (
   
         .clk (clk_100m),
		 //----- spi -----//
		 .timer_data_l_i (timer_data_l_i),
		 .timer_data_h_i (timer_data_h_i),
		 //--------------//
		 .timer_done_o (timer_done_o)
    );	

initial begin
 wait(locked);
 #200 begin
    timer_data_l_i = {16'd1,16'd300};
    timer_data_h_i = {16'd1,16'd0};
 end
 #200 begin
    timer_data_l_i = {16'd0,16'd300};
    timer_data_h_i = {16'd0,16'd0}; 
 end
 wait(timer_done_o);

#5000 $stop;

end

endmodule
