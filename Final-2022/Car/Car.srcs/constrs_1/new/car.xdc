#CLK input
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports CLK];     #CLK�Ӳ��

#RST input
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports RST];     #IO0�Ӳ��

#Switch input
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports Switch];     #IO14�Ӳ��

# Velo output
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports Velo[3]];     #IO1�Ӳ��
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports Velo[2]];     #IO2�Ӳ��
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports Velo[1]];     #IO3�Ӳ��
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports Velo[0]];     #IO4�Ӳ��

#Mode output
set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports Mode[3]];     #IO5�Ӳ��
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports Mode[2]];     #IO6�Ӳ��
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports Mode[1]];     #IO7�Ӳ��
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports Mode[0]];     #IO8�Ӳ��

#Chg input
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports Chg];     #IO20�Ӳ��

# Brk output
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports Brk];     #IO19�Ӳ��

# required if touch button used as manual clock source
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]