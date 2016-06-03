# TCL File Generated by Component Editor 10.1sp1
# Sat Jun 04 23:33:58 EDT 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | chu_avalon_ddfs "chu_avalon_ddfs" v1.0
# | null 2011.06.04.23:33:58
# | 
# | 
# | K:/code/vlog_chu_ip_v101/chu_avalon_ddfs/chu_avalon_ddfs.v
# | 
# |    ./chu_avalon_ddfs.v syn, sim
# |    ./ddfs.v syn, sim
# |    ./p2a_ram.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 10.1
# | 
package require -exact sopc 10.1
# | 
# +-----------------------------------

# +-----------------------------------
# | module chu_avalon_ddfs
# | 
set_module_property DESCRIPTION ""
set_module_property NAME chu_avalon_ddfs
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP chu_vlog_ip
set_module_property DISPLAY_NAME chu_avalon_ddfs
set_module_property TOP_LEVEL_HDL_FILE chu_avalon_ddfs.v
set_module_property TOP_LEVEL_HDL_MODULE chu_avalon_ddfs
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file chu_avalon_ddfs.v {SYNTHESIS SIMULATION}
add_file ddfs.v {SYNTHESIS SIMULATION}
add_file p2a_ram.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock_reset
# | 
add_interface clock_reset clock end
set_interface_property clock_reset clockRate 0

set_interface_property clock_reset ENABLED true

add_interface_port clock_reset clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock_reset_reset
# | 
add_interface clock_reset_reset reset end
set_interface_property clock_reset_reset associatedClock clock_reset
set_interface_property clock_reset_reset synchronousEdges DEASSERT

set_interface_property clock_reset_reset ENABLED true

add_interface_port clock_reset_reset reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point cpu_ddfs
# | 
add_interface cpu_ddfs avalon end
set_interface_property cpu_ddfs addressAlignment DYNAMIC
set_interface_property cpu_ddfs addressUnits WORDS
set_interface_property cpu_ddfs associatedClock clock_reset
set_interface_property cpu_ddfs associatedReset clock_reset_reset
set_interface_property cpu_ddfs burstOnBurstBoundariesOnly false
set_interface_property cpu_ddfs explicitAddressSpan 0
set_interface_property cpu_ddfs holdTime 0
set_interface_property cpu_ddfs isMemoryDevice false
set_interface_property cpu_ddfs isNonVolatileStorage false
set_interface_property cpu_ddfs linewrapBursts false
set_interface_property cpu_ddfs maximumPendingReadTransactions 0
set_interface_property cpu_ddfs printableDevice false
set_interface_property cpu_ddfs readLatency 0
set_interface_property cpu_ddfs readWaitTime 1
set_interface_property cpu_ddfs setupTime 0
set_interface_property cpu_ddfs timingUnits Cycles
set_interface_property cpu_ddfs writeWaitTime 0

set_interface_property cpu_ddfs ENABLED true

add_interface_port cpu_ddfs ddfs_address address Input 9
add_interface_port cpu_ddfs ddfs_chipselect chipselect Input 1
add_interface_port cpu_ddfs ddfs_write write Input 1
add_interface_port cpu_ddfs ddfs_writedata writedata Input 32
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point ddfs_dac
# | 
add_interface ddfs_dac conduit end

set_interface_property ddfs_dac ENABLED true

add_interface_port ddfs_dac ddfs_data_out export Output 16
# | 
# +-----------------------------------