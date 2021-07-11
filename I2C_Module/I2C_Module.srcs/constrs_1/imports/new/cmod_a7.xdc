## Buttons
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { Button[0] }]; #IO_L19N_T3_VREF_16 Sch=btn[0]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { Button[1] }]; #IO_L19P_T3_16 Sch=btn[1]

## LEDs
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L12N_T1_MRCC_16 Sch=led[1]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L13P_T2_MRCC_16 Sch=led[2]

## I2C_Pins
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { I2C_SCL }]; #IO_L12P_T1_MRCC_35 Sch=pio[18]
set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports { I2C_SDA }]; #IO_L12N_T1_MRCC_35 Sch=pio[19]

# Reset Pin
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { CTRL10 }]; #IO_L9P_T1_DQS_AD7P_35 Sch=pio[20]