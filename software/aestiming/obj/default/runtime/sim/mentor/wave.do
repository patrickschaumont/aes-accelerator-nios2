onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/clk
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/reset
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/clk_en
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/start
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/done
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/n
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/dataa
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/datab
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/tboxtop_0/result
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/pio_0/out_port
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/nios2_gen2_0/d_address
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/nios2_gen2_0/d_read
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/nios2_gen2_0/d_write
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/nios2_gen2_0/i_address
add wave -noupdate -radix hexadecimal /softcore_top_tb/softcore_top_inst/nios2_gen2_0/i_read
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {443790000 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {101275250 ps} {636880250 ps}
