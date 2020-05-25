# TCL File Generated by Component Editor 18.1
# Mon May 11 15:30:16 EDT 2020
# DO NOT MODIFY


# 
# tboxtop "tboxtop" v1.0
#  2020.05.11.15:30:16
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module tboxtop
# 
set_module_property DESCRIPTION ""
set_module_property NAME tboxtop
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME tboxtop
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL tboxtop
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property quartus_synth ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file tboxd0.v VERILOG PATH tboxd0.v
add_fileset_file tboxd1.v VERILOG PATH tboxd1.v
add_fileset_file tboxd2.v VERILOG PATH tboxd2.v
add_fileset_file tboxd3.v VERILOG PATH tboxd3.v
add_fileset_file tboxd4.v VERILOG PATH tboxd4.v
add_fileset_file tboxe0.v VERILOG PATH tboxe0.v
add_fileset_file tboxe1.v VERILOG PATH tboxe1.v
add_fileset_file tboxe2.v VERILOG PATH tboxe2.v
add_fileset_file tboxe3.v VERILOG PATH tboxe3.v
add_fileset_file tboxe4.v VERILOG PATH tboxe4.v
add_fileset_file tboxtop.v VERILOG PATH tboxtop.v TOP_LEVEL_FILE

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog TOP_LEVEL tboxtop
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property sim_verilog ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file tboxd0.v VERILOG PATH tboxd0.v
add_fileset_file tboxd1.v VERILOG PATH tboxd1.v
add_fileset_file tboxd2.v VERILOG PATH tboxd2.v
add_fileset_file tboxd3.v VERILOG PATH tboxd3.v
add_fileset_file tboxd4.v VERILOG PATH tboxd4.v
add_fileset_file tboxe0.v VERILOG PATH tboxe0.v
add_fileset_file tboxe1.v VERILOG PATH tboxe1.v
add_fileset_file tboxe2.v VERILOG PATH tboxe2.v
add_fileset_file tboxe3.v VERILOG PATH tboxe3.v
add_fileset_file tboxe4.v VERILOG PATH tboxe4.v
add_fileset_file tboxtop.v VERILOG PATH tboxtop.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point nios_custom_instruction_slave_0
# 
add_interface nios_custom_instruction_slave_0 nios_custom_instruction end
set_interface_property nios_custom_instruction_slave_0 clockCycle 0
set_interface_property nios_custom_instruction_slave_0 operands 2
set_interface_property nios_custom_instruction_slave_0 ENABLED true
set_interface_property nios_custom_instruction_slave_0 EXPORT_OF ""
set_interface_property nios_custom_instruction_slave_0 PORT_NAME_MAP ""
set_interface_property nios_custom_instruction_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property nios_custom_instruction_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port nios_custom_instruction_slave_0 clk clk Input 1
add_interface_port nios_custom_instruction_slave_0 reset reset Input 1
add_interface_port nios_custom_instruction_slave_0 clk_en clk_en Input 1
add_interface_port nios_custom_instruction_slave_0 start start Input 1
add_interface_port nios_custom_instruction_slave_0 done done Output 1
add_interface_port nios_custom_instruction_slave_0 n n Input 8
add_interface_port nios_custom_instruction_slave_0 dataa dataa Input 32
add_interface_port nios_custom_instruction_slave_0 datab datab Input 32
add_interface_port nios_custom_instruction_slave_0 result result Output 32

