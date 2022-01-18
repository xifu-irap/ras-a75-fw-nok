onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_pipein_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_pipein.udo}

run -all

quit -force
