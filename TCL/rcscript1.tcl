# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/    
set_db hdl_search_path /home/mkhobragade/ALU

set_db library slow.lib
read_hdl ALU.v
elaborate 
# read_sdc /home/mkhobragade/counter4bit/constraints_sdc.sdc
#set_top_module four_bit_adder
set_dont_use *XL
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > ALU_netlist.v
write_sdc > ALU_block.sdc
report_area > ALU_area.rep
# report_gates > counter_gate.rep
report_power > ALU_power.rep
report_timing > ALU_timing.rep
report_qor > ALU_qor.rep
gui_show


