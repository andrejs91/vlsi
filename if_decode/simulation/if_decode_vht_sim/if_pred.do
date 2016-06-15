onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/reset
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/IF_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr_to_decode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_to_pred
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_predicted
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/branch_predicted
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_next
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_reg_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/pc_from_if
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/branch_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/hit
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/branch_predicted
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/tag_mem(6)
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/predictor/data_mem(6)
add wave -noupdate /if_decode_vhd_tst/i1/predictor/branch_state(6)
add wave -noupdate /if_decode_vhd_tst/i1/predictor/v_bit(6)
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14168 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {64 ns}
