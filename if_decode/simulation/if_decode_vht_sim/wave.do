onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/reset
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/initial_PC
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/IF_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_next
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr_to_decode
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/stall
add wave -noupdate /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/PC_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr_from_if
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs2_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs2_adr
add wave -noupdate /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/op1_1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/op2_1
add wave -noupdate /if_decode_vhd_tst/i1/exe_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/instr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/data_alu_out
add wave -noupdate /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_from_alu
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/st_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_reg
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/instr_out
add wave -noupdate /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/data_from_mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17053 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 135
configure wave -valuecolwidth 89
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
WaveRestoreZoom {0 ps} {104192 ps}
