onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mp7wrapped_pfalgo3_full_0_opt

do {wave.do}

view wave
view structure
view signals

do {mp7wrapped_pfalgo3_full_0.udo}

run -all

quit -force
