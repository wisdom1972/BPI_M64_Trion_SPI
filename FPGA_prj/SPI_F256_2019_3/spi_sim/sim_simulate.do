
vsim -voptargs="+acc" -t 1ns -gui work.top_tb


do {wave.do}

view wave
view structure
view signals


run 1000ms
