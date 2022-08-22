`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/21 16:46:07
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input rst,
    
    input [1:0] ctrl, // ctrl=00,no jump-off; ctrl=01,beq; ctrl=10,j
    input [31:0] target,
    input [31:0] offset,
    
    output [31:0] pc_value
    );
    
    reg [31:0] pc_val;
    
    initial begin
        pc_val = 32'b0;
    end
    
    always@(posedge clk)begin
        if(ctrl == 2'b01)begin
            //beq
            pc_val <= pc_val + offset;
        end
        else if(ctrl == 2'b10)begin
            //j
            pc_val <= offset;
        end
        else begin
            //default
            pc_val <= pc_val + 4;
        end
    end
    
    assign pc_value = pc_val;
    
endmodule
