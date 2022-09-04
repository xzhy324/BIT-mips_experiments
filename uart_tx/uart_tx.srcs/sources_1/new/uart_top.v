`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/01 22:29:26
// Design Name: 
// Module Name: uart_top
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


module uart_top(
    input I_clk,
    input I_rst,
    input [31:0] I_addr,
    input [31:0] I_data,
    
    output [6:0] O_led,
    output [1:0] O_px
    );
    
    reg R_sending;
    reg [7:0] R_data;
    wire W_done;
    
    always @ (posedge I_clk or negedge I_rst)begin
        if(I_addr == 32'hAAAAFFFF)begin
            R_sending <= 1'b1;
            R_data <= I_data[7:0];
        end
        else if(W_done)begin
            R_sending <= 1'b0;
        end
    end
    
    
    wire W_bps_tx_clk;
    wire W_bps_tx_clk_en;
    wire W_rs232_txd;
    wire W_tx_output;
    
    assign W_rs232_txd = W_done ? 1 : W_tx_output; // keep hign vol when free
    //assign W_rs232_txd = W_tx_output;
    
    uart_tx uart_tx0(
        .I_clk(I_clk),
        .I_rst(I_rst),
        .I_sending(R_sending),
        .I_bps_tx_clk(W_bps_tx_clk),
        .I_data(R_data),
        
        .O_bps_tx_clk_en(W_bps_tx_clk_en),
        .O_rs232_txd(W_tx_output),
        .O_done(W_done)
    );
    baudrate_gen baudrate_gen0(
        .I_clk(I_clk),
        .I_rst(I_rst),
        .I_bps_tx_clk_en(W_bps_tx_clk_en),
        
        .O_bps_tx_clk(W_bps_tx_clk)
    );
    
    
    uart_display uart_display0(
        .I_clk(I_clk),
        .I_rst_n(I_rst),
        .I_rs232_rxd(W_rs232_txd),
        .O_led(O_led),
        .O_px(O_px)
    );
   
    
endmodule
