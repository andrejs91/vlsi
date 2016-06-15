onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reset
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/opcode_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_from_alu
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_alu_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/st_value
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_adr_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/rd_reg
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/addr_bus
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_bus_in
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/mem_jedinica/data_bus_out
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/opcode
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/wr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/data_from_mem
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_data
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/rd_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/reg_addr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/rd_reg
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/ar_log
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/wb_jedinica/load
add wave -noupdate /if_decode_vhd_tst/clk
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/regFile/wr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/regFile/wr_adr
add wave -noupdate -radix hexadecimal /if_decode_vhd_tst/i1/decode_jedinica/regFile/wr_data
add wave -noupdate -radix hexadecimal -childformat {{/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(0) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(1) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(2) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(3) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(4) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(5) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(6) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(7) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(8) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(9) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(10) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(11) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(12) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(13) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(14) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(15) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(16) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(17) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(18) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(19) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(20) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(21) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(22) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(23) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(24) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(25) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(26) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(27) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(28) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(29) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(30) -radix hexadecimal} {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(31) -radix hexadecimal}} -expand -subitemconfig {/if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(0) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(1) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(2) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(3) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(4) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(5) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(6) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(7) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(8) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(9) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(10) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(11) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(12) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(13) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(14) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(15) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(16) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(17) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(18) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(19) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(20) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(21) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(22) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(23) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(24) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(25) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(26) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(27) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(28) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(29) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(30) {-height 15 -radix hexadecimal} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers(31) {-height 15 -radix hexadecimal}} /if_decode_vhd_tst/i1/decode_jedinica/regFile/registers
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61411 ps} 0}
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
WaveRestoreZoom {18225 ps} {83252 ps}
