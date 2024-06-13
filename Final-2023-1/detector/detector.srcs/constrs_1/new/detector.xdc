#CLK input
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports CLK];     #CLK�Ӳ��

#RST input
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports RST];     #IO0�Ӳ��

#Mode Input
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports Mode];     #IO10�Ӳ��

#Input Input
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports Input[5]];     #IO1�Ӳ��
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports Input[4]];     #IO2�Ӳ��
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports Input[3]];     #IO3�Ӳ��
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports Input[2]];     #IO4�Ӳ��
set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports Input[1]];     #IO5�Ӳ��
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports Input[0]];     #IO6�Ӳ��

#Display Output
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports Display[2]];     #IO18�Ӳ��
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports Display[1]];     #IO19�Ӳ��
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports Display[0]];     #IO20�Ӳ��

#LED1 Output
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports LED1];     #IO11�Ӳ��

#LED2 Output
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports LED2];     #IO12�Ӳ��

# required if touch button used as manual clock source
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
