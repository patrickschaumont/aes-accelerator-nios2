
# (C) 2001-2020 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 18.1 625 win32 2020.05.12.22:23:29

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     softcore_top_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If softcore_top_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 18.1 625 win32 2020.05.12.22:23:29
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="softcore_top_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/intelfpga_lite/18.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_ociram_default_contents.dat ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_ociram_default_contents.hex ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_ociram_default_contents.mif ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_a.dat ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_a.hex ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_a.mif ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_b.dat ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_b.hex ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_rf_ram_b.mif ./
  cp -f C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_onchip_memory2_0.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/verbosity_pkg.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_avalon_st_adapter.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_rsp_mux_001.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_arbitrator.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_rsp_mux.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_rsp_demux_004.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_rsp_demux.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_cmd_mux_004.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_cmd_mux.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_cmd_demux_001.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_cmd_demux.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_router_006.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_router_002.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_router_001.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0_router.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_avalon_sc_fifo.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_slave_agent.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_master_agent.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_slave_translator.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_merlin_master_translator.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_debug_slave_sysclk.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_debug_slave_tck.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_debug_slave_wrapper.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_cpu_test_bench.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_reset_controller.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_reset_synchronizer.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_irq_mapper.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_mm_interconnect_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_customins_slave_translator.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0_custom_instruction_master_multi_xconnect.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_customins_master_translator.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_timer_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxd0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxd1.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxd2.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxd3.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxd4.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxe0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxe1.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxe2.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxe3.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxe4.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/tboxtop.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_pio_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_onchip_memory2_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_nios2_gen2_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top_jtag_uart_0.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_avalon_reset_source.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/altera_avalon_clock_source.sv \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/submodules/softcore_top.v \
  C:/cygwin64/home/pschaumont/aes-accelerator-nios2/softcore_top/testbench/softcore_top_tb/simulation/softcore_top_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
