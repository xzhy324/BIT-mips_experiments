`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/31 15:59:56
// Design Name: 
// Module Name: baudrate_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "macro.vh"

module baudrate_gen(
    input I_clk,
    input I_rst_n,
    //input I_bps_tx_clk_en,//sending module,aborted
    input I_bps_rx_clk_en,//recieving module
    //output O_bps_tx_clk,//aborted
    output O_bps_rx_clk
    );
    
    parameter   C_BPS9600   = 10415,
                C_BPS19200  = 5207,
                C_BPS38400  = 2603,
                C_BPS57600  = 1301,
                C_BPS115200 = 867;
                
    parameter C_BPS = C_BPS115200;
    
    reg [12:0] R_bps_rx_cnt; //recieving clk counter, 2^13-1 is the upper bound for 10415(biggest counter required)
    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(I_rst_n == `RST_TRIGGERED)
            R_bps_rx_cnt <= 13'b0; // initial when rst is pushed
        else if(I_bps_rx_clk_en == 1'b1)
        begin
            if(R_bps_rx_cnt >= C_BPS)
                R_bps_rx_cnt <= 13'b0;
            else
                R_bps_rx_cnt <= R_bps_rx_cnt + 1'b1;
        end
        else
            R_bps_rx_cnt <= 13'b0; // when ENable is closed, erase cnt to all 0
    end
    
    assign O_bps_rx_clk = (R_bps_rx_cnt == C_BPS >> 1'b1)? 1'b1 : 1'b0;
    
endmodule
