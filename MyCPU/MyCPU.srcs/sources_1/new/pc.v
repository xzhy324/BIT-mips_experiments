`timescale 1ns / 1ps

module pc(
    input clk,
    input rst,
    
    input [1:0] ctrl, // ctrl=00,no jump-off; ctrl=01,beq; ctrl=10,j
    input [25:0] instr_index,
    input beq_mark, // when ctrl=01 && beq_mark == 0 , cast beq_jmp; otherwise not
    
    output [31:0] pc_value
    );
    
    reg [31:0] pc_val;
    
    wire [31:0] target;//target for 'j'
    wire [31:0] offset; //offset for 'beq'
    wire [17:0] beq_imm; //intermediate variable for 'beq'
    
    assign target = {pc_value[31:28],{instr_index,2'b0}};
    assign beq_imm = {instr_index[15:0],2'b0};
    assign offset = { {14{beq_imm[17]}} , beq_imm}; 
    
    initial begin
        pc_val = 32'b0;
    end
    
    always@(posedge clk)begin
        if(ctrl == 2'b01 && beq_mark == 1'b0)begin
            //beq
            pc_val <= pc_val + offset;
        end
        else if(ctrl == 2'b10)begin
            //j
            pc_val <= target;
        end
        else begin
            //default
            pc_val <= pc_val + 4;
        end
    end
    
    assign pc_value = pc_val;
    
endmodule
