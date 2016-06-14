onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/opcode_in
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/op1_1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/imm_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/forward_rs1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/fwd_rs1_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op1_data
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rs1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rs2_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_ex
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_wb
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/fwd_rs1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/fwd_rs2
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/fwd_rs1_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/fwd_rs2_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/valid
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_ex
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {41300 ps} 0}
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
WaveRestoreZoom {0 ps} {65027 ps}
