onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab8/actC
add wave -noupdate /lab8/actOut
add wave -noupdate /lab8/actY
add wave -noupdate /lab8/clockfpga
add wave -noupdate /lab8/clr_r
add wave -noupdate /lab8/entradamc
add wave -noupdate /lab8/entradamy
add wave -noupdate /lab8/selC
add wave -noupdate /lab8/hex0
add wave -noupdate /lab8/hex1
add wave -noupdate /lab8/hex2
add wave -noupdate /lab8/saidaRSs
add wave -noupdate /lab8/saidabcdaux
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {613 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab8/actC 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab8/actOut 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab8/actY 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab8/clockfpga 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab8/clr_r 
wave create -driver freeze -pattern constant -value UUUU -range 3 0 -starttime 0ps -endtime 1000ps sim:/lab8/entradamc 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value UUUU -range 3 0 -starttime 0ps -endtime 1000ps sim:/lab8/entradamy 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value UU -range 1 0 -starttime 0ps -endtime 1000ps sim:/lab8/selC 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/lab8/actC 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/lab8/actOut 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/lab8/actY 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/lab8/clr_r 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ps -endtime 1000ps Edit:/lab8/entradamc 
wave modify -driver freeze -pattern constant -value 0001 -range 3 0 -starttime 0ps -endtime 1000ps Edit:/lab8/entradamy 
wave modify -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ps -endtime 150ps Edit:/lab8/selC 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 150ps -endtime 300ps Edit:/lab8/selC 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 300ps -endtime 550ps Edit:/lab8/selC 
wave modify -driver freeze -pattern constant -value 01 -range 1 0 -starttime 550ps -endtime 1000ps Edit:/lab8/selC 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 2000ps Edit:/lab8/actC 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 2000ps Edit:/lab8/actOut 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 2000ps Edit:/lab8/actY 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/lab8/clockfpga 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 2000ps Edit:/lab8/clr_r 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ps -endtime 2000ps Edit:/lab8/entradamc 
wave modify -driver freeze -pattern constant -value 0001 -range 3 0 -starttime 0ps -endtime 2000ps Edit:/lab8/entradamy 
wave modify -driver freeze -pattern constant -value 01 -range 1 0 -starttime 550ps -endtime 2000ps Edit:/lab8/selC 
WaveCollapseAll -1
wave clipboard restore
