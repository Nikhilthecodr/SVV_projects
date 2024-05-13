vsim -voptargs="+acc" top
vlog -cover bcsxf all files
vsim -voptargs="+acc" -coverage top
