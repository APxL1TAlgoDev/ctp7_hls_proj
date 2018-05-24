onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+v7_bd -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_5 -L axi_bram_ctrl_v4_0_10 -L fifo_generator_v13_1_3 -L axi_chip2chip_v4_2_11 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L axi_protocol_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v7_bd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {v7_bd.udo}

run -all

endsim

quit -force
