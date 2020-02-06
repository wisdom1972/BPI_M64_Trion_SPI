
//
// Verific Verilog Description of module top
//

module top (clk, rstn, spi_clk_i, mosi_i, spi_ss_i);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input spi_clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input mosi_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input spi_ss_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    
    wire \data_o[3]  /* verific syn_preserve="TRUE" */ ;
    wire \spi_slave/mosi_d0  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[4]  /* verific syn_preserve="TRUE" */ ;
    wire data_en_o /* verific syn_preserve="TRUE" */ ;
    wire \data_o[5]  /* verific syn_preserve="TRUE" */ ;
    wire \spi_slave/ss_fall  /* verific syn_preserve="TRUE" */ ;
    wire \spi_slave/ss_raise  /* verific syn_preserve="TRUE" */ ;
    wire \spi_slave/clk_fall  /* verific syn_preserve="TRUE" */ ;
    wire \spi_slave/clk_raise  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[0]  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[1]  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[6]  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[7]  /* verific syn_preserve="TRUE" */ ;
    wire \data_o[2]  /* verific syn_preserve="TRUE" */ ;
    
    wire \spi_slave/state[1] , mosi, spi_ss, \spi_slave/state[0] , spi_clk, 
        \spi_slave/spi_clk_d0 , \spi_slave/cnt[0] , \spi_slave/data[0] , 
        \spi_slave/spi_ss_d0 , n18, n19, n20, n21, \spi_slave/cnt[1] , 
        \spi_slave/cnt[2] , \spi_slave/cnt[3] , \spi_slave/data[1] , \spi_slave/data[2] , 
        \spi_slave/data[3] , \spi_slave/data[4] , \spi_slave/data[5] , 
        \spi_slave/data[6] , \spi_slave/data[7] , n39, n40, n41, n42, 
        n45, n49, n55, n56, n57, n58, n59, n61, n68, n70, 
        n72, n74, n76, n78, n80, n82, n84, n86, \clk~O , n110, 
        n111, n112;
    
    EFX_LUT4 LUT__154 (.I0(\spi_slave/cnt[3] ), .I1(\spi_slave/cnt[1] ), 
            .I2(\spi_slave/cnt[2] ), .I3(\spi_slave/cnt[0] ), .O(n111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__154.LUTMASK = 16'h4000;
    EFX_FF \spi_slave/state[1]~FF  (.D(n42), .CE(n49), .CLK(\clk~O ), 
           .SR(n45), .Q(\spi_slave/state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \spi_slave/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/state[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/state[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/state[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi~FF  (.D(mosi_i), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(mosi)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/top.v(33)
    defparam \mosi~FF .CLK_POLARITY = 1'b1;
    defparam \mosi~FF .CE_POLARITY = 1'b1;
    defparam \mosi~FF .SR_POLARITY = 1'b1;
    defparam \mosi~FF .D_POLARITY = 1'b1;
    defparam \mosi~FF .SR_SYNC = 1'b1;
    defparam \mosi~FF .SR_VALUE = 1'b0;
    defparam \mosi~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_ss~FF  (.D(spi_ss_i), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(spi_ss)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/top.v(33)
    defparam \spi_ss~FF .CLK_POLARITY = 1'b1;
    defparam \spi_ss~FF .CE_POLARITY = 1'b1;
    defparam \spi_ss~FF .SR_POLARITY = 1'b1;
    defparam \spi_ss~FF .D_POLARITY = 1'b1;
    defparam \spi_ss~FF .SR_SYNC = 1'b1;
    defparam \spi_ss~FF .SR_VALUE = 1'b0;
    defparam \spi_ss~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/state[0]~FF  (.D(\spi_slave/state[0] ), .CE(n49), 
           .CLK(\clk~O ), .SR(rstn), .Q(\spi_slave/state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \spi_slave/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \spi_slave/state[0]~FF .D_POLARITY = 1'b0;
    defparam \spi_slave/state[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/state[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_clk~FF  (.D(spi_clk_i), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(spi_clk)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/top.v(33)
    defparam \spi_clk~FF .CLK_POLARITY = 1'b1;
    defparam \spi_clk~FF .CE_POLARITY = 1'b1;
    defparam \spi_clk~FF .SR_POLARITY = 1'b1;
    defparam \spi_clk~FF .D_POLARITY = 1'b1;
    defparam \spi_clk~FF .SR_SYNC = 1'b1;
    defparam \spi_clk~FF .SR_VALUE = 1'b0;
    defparam \spi_clk~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/spi_clk_d0~FF  (.D(spi_clk), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/spi_clk_d0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(34)
    defparam \spi_slave/spi_clk_d0~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/spi_clk_d0~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/spi_clk_d0~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/spi_clk_d0~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/spi_clk_d0~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/spi_clk_d0~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/spi_clk_d0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/mosi_d0~FF  (.D(mosi), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/mosi_d0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(34)
    defparam \spi_slave/mosi_d0~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/mosi_d0~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/mosi_d0~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/mosi_d0~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/mosi_d0~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/mosi_d0~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/mosi_d0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/cnt[0]~FF  (.D(n55), .CE(n56), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\spi_slave/cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[0]~FF  (.D(n57), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[0]~FF  (.D(mosi), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_en_o~FF  (.D(\spi_slave/state[1] ), .CE(n61), 
           .CLK(\clk~O ), .SR(1'b0), .Q(data_en_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_en_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_en_o~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_en_o~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_en_o~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_en_o~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_en_o~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_en_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/spi_ss_d0~FF  (.D(spi_ss), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/spi_ss_d0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(34)
    defparam \spi_slave/spi_ss_d0~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/spi_ss_d0~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/spi_ss_d0~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/spi_ss_d0~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/spi_ss_d0~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/spi_ss_d0~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/spi_ss_d0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/cnt[1]~FF  (.D(n68), .CE(n56), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\spi_slave/cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/cnt[2]~FF  (.D(n70), .CE(n56), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\spi_slave/cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/cnt[3]~FF  (.D(n72), .CE(n56), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\spi_slave/cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[1]~FF  (.D(n74), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[2]~FF  (.D(n76), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[3]~FF  (.D(n78), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[4]~FF  (.D(n80), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[5]~FF  (.D(n82), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[6]~FF  (.D(n84), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data_o[7]~FF  (.D(n86), .CE(n58), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_o[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data_o[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data_o[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data_o[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data_o[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data_o[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data_o[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data_o[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[1]~FF  (.D(\spi_slave/data[0] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[2]~FF  (.D(\spi_slave/data[1] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[3]~FF  (.D(\spi_slave/data[2] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[4]~FF  (.D(\spi_slave/data[3] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[5]~FF  (.D(\spi_slave/data[4] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[6]~FF  (.D(\spi_slave/data[5] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_slave/data[7]~FF  (.D(\spi_slave/data[6] ), .CE(n59), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\spi_slave/data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(84)
    defparam \spi_slave/data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_slave/data[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_slave/data[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_slave/data[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_slave/data[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_slave/data[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_slave/data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \spi_slave/add_17/i3  (.I0(\spi_slave/cnt[2] ), .I1(1'b0), .CI(n21), 
            .O(n18), .CO(n19)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(69)
    defparam \spi_slave/add_17/i3 .I0_POLARITY = 1'b1;
    defparam \spi_slave/add_17/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \spi_slave/add_17/i2  (.I0(\spi_slave/cnt[1] ), .I1(1'b0), .CI(n40), 
            .O(n20), .CO(n21)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(69)
    defparam \spi_slave/add_17/i2 .I0_POLARITY = 1'b1;
    defparam \spi_slave/add_17/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \spi_slave/add_17/i1  (.I0(\spi_slave/cnt[0] ), .I1(1'b1), .CI(1'b0), 
            .O(n39), .CO(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(69)
    defparam \spi_slave/add_17/i1 .I0_POLARITY = 1'b1;
    defparam \spi_slave/add_17/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \spi_slave/add_17/i4  (.I0(\spi_slave/cnt[3] ), .I1(1'b0), .CI(n19), 
            .O(n41)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // F:/efinity_prj/rasp_pi/SPI/SPI_F256_2019_3/spi_slave.v(69)
    defparam \spi_slave/add_17/i4 .I0_POLARITY = 1'b1;
    defparam \spi_slave/add_17/i4 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__155 (.I0(n110), .I1(n111), .O(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__155.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__156 (.I0(\spi_slave/state[1] ), .I1(rstn), .O(n45)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__156.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__157 (.I0(spi_ss), .I1(\spi_slave/state[0] ), .I2(\spi_slave/spi_ss_d0 ), 
            .O(n112)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__157.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__158 (.I0(n111), .I1(n110), .I2(n45), .I3(n112), .O(n49)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__158.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__159 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/state[0] ), 
            .I2(n39), .O(n55)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__159.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__160 (.I0(\spi_slave/spi_clk_d0 ), .I1(spi_clk), .O(\spi_slave/clk_raise )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__160.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__161 (.I0(\spi_slave/state[0] ), .I1(rstn), .O(n58)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__161.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__162 (.I0(n45), .I1(\spi_slave/clk_raise ), .I2(n58), 
            .O(n56)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__162.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__163 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[0] ), 
            .O(n57)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__163.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__164 (.I0(n45), .I1(n110), .O(n59)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__164.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__165 (.I0(n58), .I1(n45), .O(n61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__165.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__166 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/state[0] ), 
            .I2(n20), .O(n68)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__166.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__167 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/state[0] ), 
            .I2(n18), .O(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__167.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__168 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/state[0] ), 
            .I2(n41), .O(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__168.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__169 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[1] ), 
            .O(n74)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__169.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__170 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[2] ), 
            .O(n76)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__170.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__171 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[3] ), 
            .O(n78)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__171.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__172 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[4] ), 
            .O(n80)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__172.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__173 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[5] ), 
            .O(n82)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__173.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__174 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[6] ), 
            .O(n84)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__174.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__175 (.I0(\spi_slave/state[1] ), .I1(\spi_slave/data[7] ), 
            .O(n86)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__175.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__176 (.I0(spi_ss), .I1(\spi_slave/spi_ss_d0 ), .O(\spi_slave/ss_fall )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__176.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__177 (.I0(\spi_slave/spi_ss_d0 ), .I1(spi_ss), .O(\spi_slave/ss_raise )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__177.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__178 (.I0(spi_clk), .I1(\spi_slave/spi_clk_d0 ), .O(\spi_slave/clk_fall )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__178.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__153 (.I0(\spi_slave/spi_clk_d0 ), .I1(spi_clk), .I2(\spi_slave/state[0] ), 
            .O(n110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__153.LUTMASK = 16'h4040;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT410
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT411
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT412
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT413
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT414
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT415
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT416
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT417
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT418
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT419
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT420
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT421
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT422
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT423
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT424
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT425
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE0
// module not written out since it is a black box. 
//

