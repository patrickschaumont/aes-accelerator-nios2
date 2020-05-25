# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force C:/cygwin64/home/pschaumont/aes-accelerator-nios2/software/aestiming/mem_init/hdl_sim/softcore_top_onchip_memory2_0.dat ./ 
file copy -force C:/cygwin64/home/pschaumont/aes-accelerator-nios2/software/aestiming/mem_init/softcore_top_onchip_memory2_0.hex ./ 
