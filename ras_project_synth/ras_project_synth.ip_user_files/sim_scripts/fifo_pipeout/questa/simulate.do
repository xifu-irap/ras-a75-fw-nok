onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_pipeout_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_pipeout.udo}

run -all

quit -force
