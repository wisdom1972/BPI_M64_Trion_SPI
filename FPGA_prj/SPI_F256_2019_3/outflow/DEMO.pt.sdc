
# Efinity Interface Designer SDC
# Version: 2019.3.272
# Date: 2020-02-05 15:53

# Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

# Device: T20F256
# Project: DEMO
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 100.00 clk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {mosi_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {mosi_i}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {spi_clk_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {spi_clk_i}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {spi_ss_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {spi_ss_i}]

# JTAG Constraints
####################
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_TCK}]
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_DRCK}]
set_output_delay -clock jtag_inst1_TCK -max 0.111 [get_ports {jtag_inst1_TDO}]
set_output_delay -clock jtag_inst1_TCK -min 0.053 [get_ports {jtag_inst1_TDO}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RUNTEST}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RUNTEST}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.231 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.116 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.321 [get_ports {jtag_inst1_SHIFT}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.161 [get_ports {jtag_inst1_SHIFT}]
