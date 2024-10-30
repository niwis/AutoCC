# Set paths to DUT root and FT root (edit if needed)
set DUT_ROOT $env(DUT_ROOT)
set AUTOCC_ROOT $env(AUTOCC_ROOT)

# Analyze design under verification files (do not edit)
set DUT_PATH ${DUT_ROOT}/
set INC_PATH ${DUT_ROOT}/../include/axi/
set PROP_PATH ${AUTOCC_ROOT}/ft_axi_xbar/sva

set_elaborate_single_run_mode off
# Analyze property files
analyze -clear
analyze -sv12 -f ${AUTOCC_ROOT}/ft_axi_xbar/files.vc
# Elaborate design and properties
elaborate -top axi_xbar_superwrap
# Set up Clocks and Resets
clock clk_i
reset -expression (!rst_ni)

set_prove_time_limit 72h

autoprove -all -bg
