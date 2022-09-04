`timescale 1ns / 1ps


module alu(
    input clk,
    input rst,
    input [3:0] ctrl,//0lui 1addiu 2add 3lw 4sw 5beq 6j 7sll 8ori
    
    input [31:0] alu_num1,
    input [31:0] alu_num2,
    
    output [31:0] ans
    //output error,
    //output error_msg,// 0-ok 1-add_overflow 2-sw/lw_wrong_addr 3-no_such_instr\\
    
    //output done, //done=1 , finish calculating
    );
    
    wire [32:0] e_alu_num1={alu_num1[31],alu_num1}; //signal_extended_num for overflow check
    wire [32:0] e_alu_num2={alu_num2[31],alu_num2};
    wire [32:0] e_add_ans = e_alu_num1 + e_alu_num2;
    wire [31:0] lui_ans = {alu_num2[15:0],16'b0};
    wire [31:0] sw_lw_addr = e_add_ans[31:0];
    wire [31:0] beq_ans = (alu_num1==alu_num2)?32'b0:32'b1;//when equal, output 0,means that a jmp should be cast 
    wire [31:0] sll_ans = alu_num2 << alu_num1;
    wire [31:0] ori_ans = alu_num1 | alu_num2;
    
    /*error check : includes add_overflow, mem_access_wrong_addr , etc.*/
    //code here todo//
    
    assign ans = 
        (ctrl==0)? lui_ans:
        (ctrl==1||ctrl==2)? e_add_ans[31:0]:
        (ctrl==3||ctrl==4)? sw_lw_addr:
        (ctrl==5)?beq_ans:
        (ctrl==7)?sll_ans:
        (ctrl==8)?ori_ans:
        32'b0;
        

endmodule
