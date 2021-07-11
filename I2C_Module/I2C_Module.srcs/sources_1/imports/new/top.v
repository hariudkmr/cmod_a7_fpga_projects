`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////////////////////////////////
module top(
    inout CTRL10,
	inout I2C_SCL,
	inout I2C_SDA,
	input [1:0] Button,
	output [1:0] LED
	 );

// Using CTRL to RESET the CPLD	
	assign RESET = CTRL10;

// Both modules output to the LEDs, use Button[7] to select which module has control
	wire [1:0] I2C_LEDs;

//	assign LED 
	assign LED = I2C_LEDs;


// Include the I2C Port Expander module
   wire sda_out;
   wire out_en;
   wire ack_out;

   // tri-state output vs. drive 1 for logic 1 (i2c specs pullup)
   wire sda_in = I2C_SDA;
   assign I2C_SDA = (ack_out || (out_en & ~sda_out)) ? 1'b0 : 1'bz;
	
i2c_module i2c_slave (
	.scl(I2C_SCL), 
	.i2c_rst(RESET),
	.sda_in(sda_in),
	.gpio_input_pins(Button),
	.ack_out(ack_out),
	.out_en(out_en),
	.sda_out(sda_out),
	.gpio_output_pins(I2C_LEDs));
                         
defparam i2c_slave.my_i2c_addr = 7'b1010110;	// pass via parameter

//*********************************************************************
// Instantiate Pullups for Timing Simulation.  
// This allows for simulation of Open Drain (external pullup) behavior
// 
// NOTE:  In order for Timing Simulation to work, you must also append 
//	the top_timesim.v file with the following:  
//
//         X_PU X_PU1     	
//         (
//             	.O (I2C_SDA)
//    	);
//*********************************************************************

PULLUP PULLUP_inst (
	.O(I2C_SDA)
	);


endmodule
