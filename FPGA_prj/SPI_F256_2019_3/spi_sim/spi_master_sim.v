`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:30 03/24/2017 
// Design Name: 
// Module Name:    cmd_Rx_fifo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
  module spi_master_sim //SPI0
   (
		 
		 output wire                   sclk,
	     output wire                   ss_n,
	     output wire                   mosi,
	     input  wire                   miso,
		 
         input  wire                   din_en,
		 input  wire [31:0]            din,
		 output wire                   dout_en,
		 output wire [15:0]            dout
	 
    );
localparam PERIOD = 10;	
clk_gen
 #(
    .PERIOD       (PERIOD*30),
    .REST_VALUE   (1'b0  )
)sclk_gen
   (
    .clk  (sclk),
    .rstn (    )
    );
	
	
	localparam IDLE    = 2'd0;	 
	localparam SEND    = 2'd1;	 	 
	localparam FINISH  = 2'd3;
	
    reg [1:0]  state   = IDLE;	
	
	reg        ss_n_tmp = 1;
	reg [31:0] din_lock;
    reg [6:0]  data_cnt = 6'd0;
	reg        mosi_tmp = 0;
	reg [15:0] data_shift;
    reg        data_shift_en;
    reg        rd;	
	always@(negedge sclk)
	  case(state)
	  IDLE: begin
	    ss_n_tmp      <= 1;
		data_cnt      <= 0;
		data_shift    <= 0;
		data_shift_en <= 0;
        if(din_en)begin
		   ss_n_tmp <= 0;
           state    <= SEND;
		   din_lock <= din;
		   rd       <= din[31];
        end		   
	  end
	  SEND:begin
        data_cnt <= data_cnt +1;
		// mosi_tmp <= din_lock[31];
		din_lock <= din_lock<<1;
		if(data_cnt >15)
		  data_shift <= {data_shift[14:0],miso};
        if(data_cnt == 6'd31)
           ss_n_tmp <= 1;
        if(data_cnt == 6'd31)begin
           state <= FINISH;
           data_shift_en <= 1;		   
		end   
	  end
	  FINISH:begin
	    data_shift_en <= 0;
	    state <= IDLE;
	  end
	  default:;
      endcase
	  
	  assign ss_n    = ss_n_tmp;
	  assign mosi    = din_lock[31];
	  assign dout_en = data_shift_en;
	  assign dout    = data_shift;
  endmodule

