`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/21 18:28:24
// Design Name: 
// Module Name: ctrl
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


module ctrl(
        input [5:0] opcode,
        input [5:0] func,
        
        output c1,
        output c2,
        output c3,
        output c4,
        output [3:0] cA,
        output [1:0] cB,
        output dmem_we,
        output reg_we
    );
    
    wire [3:0]inst_type; //refer to CPU.xlsx
    //0-lui 1-addiu 2-add 3-lw 4-sw 5-beq 6-j 7-sll 10-RESERVED
    
    assign inst_type = 
        (opcode==6'b001111)? 0: //lui
        (opcode==6'b001001)? 1: //addiu
        (opcode==6'b100011)? 3: //lw
        (opcode==6'b101011)? 4: //sw
        (opcode==6'b000100)? 5: //beq
        (opcode==6'b000010)? 6: //j
        (opcode==6'b000000)? (
            (func==6'b100000)? 2: //add
            (func==6'b000000)? 7: //sll
            10):10;//reserved
            
    
    assign c1 = (inst_type==0||inst_type==1||inst_type==3||inst_type==4)? 1:0;
    assign c2 = (inst_type==2||inst_type==7)? 1:0;
    assign c3 = (inst_type==7)?1:0;
    assign c4 = (inst_type==3)?1:0;
    assign cA = inst_type[3:0];
    assign cB = 
        (inst_type==5)? 2'b01:
        (inst_type==6)? 2'b10: 2'b00;
    
    assign dmem_we = (inst_type==4)? 1:0;
    assign reg_we = (inst_type==4||inst_type==5||inst_type==6)?0:1;
        
endmodule
