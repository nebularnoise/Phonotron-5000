transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/projet_drum_machine/bpm_clock.vhd}

vcom -93 -work work {D:/projet_drum_machine/simulation/modelsim/bpm_clock_vhd_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  bpm_clock_vhd_tst

add wave *
view structure
view signals
run 2 sec
