
// Efinity Top-level template
// Version: 2019.3.272
// Date: 2020-02-05 15:53

// Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as F:\efinity_prj\rasp_pi\SPI\SPI_F256_2019_3\DEMO.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  DEMO
//     #4)  Insert design content.


module DEMO
(
  input spi_clk_i,
  input jtag_inst1_SHIFT,
  input jtag_inst1_DRCK,
  input jtag_inst1_RESET,
  input jtag_inst1_SEL,
  input jtag_inst1_UPDATE,
  input rstn,
  input jtag_inst1_RUNTEST,
  input mosi_i,
  input clk,
  input jtag_inst1_CAPTURE,
  input spi_ss_i,
  input jtag_inst1_TDI,
  input jtag_inst1_TMS,
  input jtag_inst1_TCK,
  output jtag_inst1_TDO
);


endmodule

