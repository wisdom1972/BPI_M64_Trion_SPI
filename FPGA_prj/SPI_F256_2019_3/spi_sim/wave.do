onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group master /top_tb/spi_master_sim/sclk
add wave -noupdate -expand -group master /top_tb/spi_master_sim/ss_n
add wave -noupdate -expand -group master /top_tb/spi_master_sim/mosi
add wave -noupdate -expand -group master /top_tb/spi_master_sim/miso
add wave -noupdate -expand -group master /top_tb/spi_master_sim/din_en
add wave -noupdate -expand -group master /top_tb/spi_master_sim/din
add wave -noupdate -expand -group master /top_tb/spi_master_sim/dout_en
add wave -noupdate -expand -group master /top_tb/spi_master_sim/dout
add wave -noupdate -expand -group master /top_tb/spi_master_sim/state
add wave -noupdate -expand -group master /top_tb/spi_master_sim/ss_n_tmp
add wave -noupdate -expand -group master /top_tb/spi_master_sim/din_lock
add wave -noupdate -expand -group master /top_tb/spi_master_sim/data_cnt
add wave -noupdate -expand -group master /top_tb/spi_master_sim/mosi_tmp
add wave -noupdate -expand -group master /top_tb/spi_master_sim/data_shift
add wave -noupdate -expand -group master /top_tb/spi_master_sim/data_shift_en
add wave -noupdate -expand -group master /top_tb/spi_master_sim/rd
add wave -noupdate -expand -group slave /top_tb/spi_slave/clk
add wave -noupdate -expand -group slave /top_tb/spi_slave/spi_clk
add wave -noupdate -expand -group slave /top_tb/spi_slave/mosi
add wave -noupdate -expand -group slave /top_tb/spi_slave/spi_ss
add wave -noupdate -expand -group slave /top_tb/spi_slave/data_en_o
add wave -noupdate -expand -group slave /top_tb/spi_slave/data_o
add wave -noupdate -expand -group slave /top_tb/spi_slave/spi_ss_d0
add wave -noupdate -expand -group slave /top_tb/spi_slave/spi_clk_d0
add wave -noupdate -expand -group slave /top_tb/spi_slave/ss_fall
add wave -noupdate -expand -group slave /top_tb/spi_slave/ss_raise
add wave -noupdate -expand -group slave /top_tb/spi_slave/clk_fall
add wave -noupdate -expand -group slave /top_tb/spi_slave/clk_raise
add wave -noupdate -expand -group slave /top_tb/spi_slave/data
add wave -noupdate -expand -group slave /top_tb/spi_slave/cnt
add wave -noupdate -expand -group slave /top_tb/spi_slave/data_en
add wave -noupdate -expand -group slave /top_tb/spi_slave/data_lock
add wave -noupdate -expand -group slave /top_tb/spi_slave/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {35711462 ns} {35716255 ns}
