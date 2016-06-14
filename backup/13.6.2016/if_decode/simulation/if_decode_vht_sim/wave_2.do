onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/clk
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/stall
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_next
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_reg_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/pc_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/IF_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/if_jedinica/instr_to_decode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/clk
add wave -noupdate /if_decode_vhd_tst/i1/decode_jedinica/stall
add wave -noupdate /if_decode_vhd_tst/i1/decode_jedinica/flush
add wave -noupdate /if_decode_vhd_tst/i1/decode_jedinica/flush_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/PC_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr_from_if
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr_next
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/instr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs2_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/rs2_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op2_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op1_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/op2_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/imm_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/exe_jedinica/clk
add wave -noupdate /if_decode_vhd_tst/i1/fwd/fwd_rs1
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/fwd_rs1_value
add wave -noupdate /if_decode_vhd_tst/i1/fwd/rs1_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_ex
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_wb
add wave -noupdate /if_decode_vhd_tst/i1/fwd/ind
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rs1_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_ex
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/fwd/rd_adr_wb
add wave -noupdate /if_decode_vhd_tst/i1/fwd/stall_if
add wave -noupdate /if_decode_vhd_tst/i1/fwd/valid
add wave -noupdate /if_decode_vhd_tst/i1/fwd/ind
add wave -noupdate /if_decode_vhd_tst/i1/if_jedinica/clk
add wave -noupdate /if_decode_vhd_tst/i1/exe_jedinica/flush_id
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
add wave -noupdate /if_decode_vhd_tst/i1/mem_jedinica/flush_ex
add wave -noupdate /if_decode_vhd_tst/i1/mem_jedinica/flush_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_bus_in
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
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/flush_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/wr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/data_from_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/rd_reg
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/rd_adr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21230 ps} 0}
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
WaveRestoreZoom {8225 ps} {73252 ps}
