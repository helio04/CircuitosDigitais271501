transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB10/divclock.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB10/cont25.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB10/divclockmillis.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB10/lab10.vhd}
vcom -93 -work work {D:/Engenharia/2024.2/CD/CircuitosDigitais271501/LAB10/cont5.vhd}

