# A input
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports A[3]];     #IO1�Ӳ��
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports A[2]];     #IO2�Ӳ��
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports A[1]];     #IO3�Ӳ��
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports A[0]];     #IO4�Ӳ��

# B input
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports B[3]];     #IO6�Ӳ��
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports B[2]];     #IO7�Ӳ��
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports B[1]];     #IO8�Ӳ��
set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports B[0]];     #IO9�Ӳ��

# Cin input
set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports Cin];     #IO5�Ӳ��

# Seg0 output
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports seg0[3]];     #IO17�Ӳ��
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports seg0[2]];     #IO18�Ӳ��
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports seg0[1]];     #IO19�Ӳ��
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports seg0[0]];     #IO20�Ӳ��

# Seg1 output
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports seg1[1]];     #IO15�Ӳ��
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports seg1[0]];     #IO16�Ӳ��

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]