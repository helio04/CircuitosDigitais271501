transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB6/ff_d.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB6/mux.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB6/deslocador.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB6/registrador8bits.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB6/lab6.vhd}

