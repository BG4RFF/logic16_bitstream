////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : xaw2verilog
//  /   /         Filename : clock_generator.v
// /___/   /\     Timestamp : 04/22/2015 12:22:06
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -st /tmp/Logic16/ipcore_dir/./clock_generator.xaw /tmp/Logic16/ipcore_dir/./clock_generator
//Design Name: clock_generator
//Device: xc3s200a-4vq100
//
// Module clock_generator
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
// Period Jitter (unit interval) for block DCM_SP_INST1 = 0.10 UI
// Period Jitter (Peak-to-Peak) for block DCM_SP_INST1 = 1.01 ns
// Period Jitter (unit interval) for block DCM_SP_INST2 = 0.12 UI
// Period Jitter (Peak-to-Peak) for block DCM_SP_INST2 = 0.75 ns
`timescale 1ns / 1ps

module clock_generator(U1_CLKIN_IN, 
                       U1_RST_IN, 
                       U1_U2_SELECT_IN, 
                       U2_RST_IN, 
                       U1_CLKIN_IBUFG_OUT, 
                       U1_LOCKED_OUT, 
                       U1_U2_CLK_OUT, 
                       U2_LOCKED_OUT);

    input U1_CLKIN_IN;
    input U1_RST_IN;
    input U1_U2_SELECT_IN;
    input U2_RST_IN;
   output U1_CLKIN_IBUFG_OUT;
   output U1_LOCKED_OUT;
   output U1_U2_CLK_OUT;
   output U2_LOCKED_OUT;
   
   wire GND_BIT;
   wire U1_CLKFX_BUF;
   wire U1_CLKIN_IBUFG;
   wire U2_CLKFX_BUF;
   wire U1_CLK0_BUF;
   wire U2_CLKIN_IN;
   
   assign GND_BIT = 0;
   assign U1_CLKIN_IBUFG_OUT = U1_CLKIN_IBUFG;
   BUFGMUX  BUFGMUX_INST (.I0(U1_CLKFX_BUF), 
                         .I1(U2_CLKFX_BUF), 
                         .S(U1_U2_SELECT_IN), 
                         .O(U1_U2_CLK_OUT));
   DCM_SP #( .CLK_FEEDBACK("1X"), .CLKDV_DIVIDE(2.0), .CLKFX_DIVIDE(12), 
         .CLKFX_MULTIPLY(25), .CLKIN_DIVIDE_BY_2("FALSE"), 
         .CLKIN_PERIOD(20.8333333333333), .CLKOUT_PHASE_SHIFT("NONE"), 
         .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), .DFS_FREQUENCY_MODE("LOW"), 
         .DLL_FREQUENCY_MODE("LOW"), .DUTY_CYCLE_CORRECTION("TRUE"), 
         .FACTORY_JF(16'hC080), .PHASE_SHIFT(0), .STARTUP_WAIT("FALSE") ) 
         DCM_SP_INST1 (.CLKFB(U2_CLKIN_IN), 
                        .CLKIN(U1_CLKIN_IBUFG), 
                        .DSSEN(GND_BIT), 
                        .PSCLK(GND_BIT), 
                        .PSEN(GND_BIT), 
                        .PSINCDEC(GND_BIT), 
                        .RST(U1_RST_IN), 
                        .CLKDV(), 
                        .CLKFX(U1_CLKFX_BUF), 
                        .CLKFX180(), 
                        .CLK0(U1_CLK0_BUF), 
                        .CLK2X(), 
                        .CLK2X180(), 
                        .CLK90(), 
                        .CLK180(), 
                        .CLK270(), 
                        .LOCKED(U1_LOCKED_OUT), 
                        .PSDONE(), 
                        .STATUS());
   DCM_SP #( .CLK_FEEDBACK("NONE"), .CLKDV_DIVIDE(2.0), .CLKFX_DIVIDE(3), 
         .CLKFX_MULTIPLY(10), .CLKIN_DIVIDE_BY_2("FALSE"), 
         .CLKIN_PERIOD(20.8333333333333), .CLKOUT_PHASE_SHIFT("NONE"), 
         .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), .DFS_FREQUENCY_MODE("LOW"), 
         .DLL_FREQUENCY_MODE("LOW"), .DUTY_CYCLE_CORRECTION("TRUE"), 
         .FACTORY_JF(16'hC080), .PHASE_SHIFT(0), .STARTUP_WAIT("FALSE") ) 
         DCM_SP_INST2 (.CLKFB(GND_BIT), 
                        .CLKIN(U2_CLKIN_IN), 
                        .DSSEN(GND_BIT), 
                        .PSCLK(GND_BIT), 
                        .PSEN(GND_BIT), 
                        .PSINCDEC(GND_BIT), 
                        .RST(U2_RST_IN), 
                        .CLKDV(), 
                        .CLKFX(U2_CLKFX_BUF), 
                        .CLKFX180(), 
                        .CLK0(), 
                        .CLK2X(), 
                        .CLK2X180(), 
                        .CLK90(), 
                        .CLK180(), 
                        .CLK270(), 
                        .LOCKED(U2_LOCKED_OUT), 
                        .PSDONE(), 
                        .STATUS());
   IBUFG  U1_CLKIN_IBUFG_INST (.I(U1_CLKIN_IN), 
                              .O(U1_CLKIN_IBUFG));

   BUFG U1_CLK0_BUFG_INST (.I(U1_CLK0_BUF), 
                           .O(U2_CLKIN_IN));
     
endmodule
