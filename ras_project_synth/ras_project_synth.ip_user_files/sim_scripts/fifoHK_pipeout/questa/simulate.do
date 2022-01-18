onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifoHK_pipeout_opt

do {wave.do}

view wave
view structure
view signals

do {fifoHK_pipeout.udo}

run -all

quit -force
