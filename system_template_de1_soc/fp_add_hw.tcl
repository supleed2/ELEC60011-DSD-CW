# TCL File Generated by Component Editor 20.1
# Wed Mar 09 17:06:57 GMT 2022
# DO NOT MODIFY


# 
# fp_add "Floating Point Add" v20.1
#  2022.03.09.17:06:57
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module fp_add
# 
set_module_property DESCRIPTION ""
set_module_property NAME fp_add
set_module_property VERSION 20.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Floating Point Add"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL fp_add
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file fp_add.vhd VHDL PATH fp_add.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point fp_add_slave
# 
add_interface fp_add_slave nios_custom_instruction end
set_interface_property fp_add_slave clockCycle 0
set_interface_property fp_add_slave operands 2
set_interface_property fp_add_slave ENABLED true
set_interface_property fp_add_slave EXPORT_OF ""
set_interface_property fp_add_slave PORT_NAME_MAP ""
set_interface_property fp_add_slave CMSIS_SVD_VARIABLES ""
set_interface_property fp_add_slave SVD_ADDRESS_GROUP ""

add_interface_port fp_add_slave areset reset Input 1
add_interface_port fp_add_slave en clk_en Input 1
add_interface_port fp_add_slave a dataa Input 32
add_interface_port fp_add_slave b datab Input 32
add_interface_port fp_add_slave q result Output 32
add_interface_port fp_add_slave clk clk Input 1

