/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2018 Efinix Inc. All rights reserved.
//
//
//********************************
// Revisions:
// 0.0 Initial rev
//********************************

module spi_slave
(
  //
  input      clk,
  input      rstn,
  input      spi_clk,
  input      mosi,
  input      spi_ss,
  
  output      data_en_o,
  output [7:0]data_o
);
  

  reg spi_ss_d0;
  reg spi_clk_d0;
  (* syn_preserve="TRUE" *)reg mosi_d0;
  (* syn_preserve="TRUE" *)wire ss_fall,ss_raise;
  (* syn_preserve="TRUE" *)wire clk_fall,clk_raise;
  always@(posedge clk) begin
     spi_ss_d0  <= #1 spi_ss;
     spi_clk_d0 <= #1 spi_clk;
     mosi_d0    <= #1 mosi;
  end 
  assign ss_fall  = spi_ss_d0 & ~spi_ss;
  assign ss_raise = ~spi_ss_d0 & spi_ss;
  assign clk_raise = ~spi_clk_d0 & spi_clk;
  assign clk_fall  = spi_clk_d0 & ~spi_clk;
  
	 
  reg [7:0] data;
  reg [3:0] cnt;
  reg       data_en;
  reg [7:0] data_lock;
  reg [1:0] state = 0;
  localparam IDLE = 2'd0;  
  localparam RECV = 2'd1;  
  localparam DONE = 2'd2;
  
  always@(posedge clk)	
  if(!rstn) begin
    state <= IDLE;
  end else begin	
  case(state)
  IDLE:begin
     cnt <= 0;
	 data_en <= 0;
	 data_lock <= 0;
     if(ss_fall)begin
        state <= RECV;
	 end  
  end  
  RECV:begin
	   data_en <= 0;
	   if(ss_raise)begin
	     state <= IDLE;
       end
	   if(clk_raise)begin 
	     cnt   <= cnt + 1;
         data[0] <= mosi;
		 data[7:1] <= data[6:0];
         if(cnt == 7)
            state <= DONE;	
       end			
  end
  DONE:begin
     cnt       <= 0;
     data_lock <= data;
	 data_en   <= 1;
	 state     <= RECV;
  end
  default:state <= IDLE;  
  endcase
  end

  assign  data_en_o = data_en;
  assign  data_o    = data_lock;
endmodule
