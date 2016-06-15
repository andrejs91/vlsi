onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/instr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/opcode_in
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/op1_1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/op2_1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/rd_adr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/imm_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/data_alu_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/ar_log
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/load
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/valid
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/wr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_from_alu
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_alu_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_adr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_reg
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/ar_log
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/ar_log_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/load
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/load_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/st_value
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {31715 ps} 0}
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
