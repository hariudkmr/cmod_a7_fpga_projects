## 12 MHz Clock Signal
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { SCLK }]; #IO_L12P_T1_MRCC_14 Sch=gclk
#create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports {SCLK}];

#PCLK
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { SCLK }]; #IO_L12P_T1_MRCC_35 Sch=pio[18]
 
## LEDs
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L12N_T1_MRCC_16 Sch=led[1]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L13P_T2_MRCC_16 Sch=led[2]

## Buttons
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L19N_T3_VREF_16 Sch=btn[0]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { CTRL }]; #IO_L13N_T2_MRCC_16 Sch=led0_g
#set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L12N_T1_MRCC_35 Sch=pio[19]
#set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { CTRL }]; #IO_L9P_T1_DQS_AD7P_35 Sch=pio[20]


## Pmod Header JA
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { DQ[7]  }]; #IO_L8N_T1_AD14N_35 Sch=pio[01]
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { DQ[6]  }]; #IO_L8P_T1_AD14P_35 Sch=pio[02]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { DQ[5]  }]; #IO_L12P_T1_MRCC_16 Sch=pio[03]
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { DQ[4]  }]; #IO_L7N_T1_AD6N_35 Sch=pio[04]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { DQ[3]  }]; #IO_L11P_T1_SRCC_16 Sch=pio[05]
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { DQ[2]  }]; #IO_L3P_T0_DQS_AD5P_35 Sch=pio[06]
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { DQ[1]  }]; #IO_L6N_T0_VREF_16 Sch=pio[07]
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { DQ[0]  }]; #IO_L11N_T1_SRCC_16 Sch=pio[08]

