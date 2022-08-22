`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/21 14:54:31
// Design Name: 
// Module Name: cpu_top
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


module cpu_top(
    input clk,
    input rst
    );
    
    wire [31:0] offset; //offset for 'beq'
    wire [31:0] target;//target for 'j'
    wire [17:0] beq_imm; //intermediate var for 'beq'
    wire [31:0] pc_value;
    
    wire [31:0] inst;
    wire [15:0] imm;
    wire [31:0] ex_imm;
    wire [5:0] opcode;
    wire [5:0] func;
    wire [4:0] shamt;
    wire [25:0] instr_index;
    
    wire c1,c2,c3,c4;
    wire [3:0] cA;
    wire [1:0] cB;
    wire dmem_we, reg_we;
    
    
    wire [31:0] alu_num1;
    wire [31:0] alu_num2;
    wire [31:0] alu_ans;
    
    wire [31:0] rs_data;
    wire [31:0] rt_data;
    wire [31:0] wb_data;
    wire [4:0] wb_addr;
    wire [4:0] rs_addr;
    wire [4:0] rt_addr;
    
    wire [31:0] mem_data;
    
    
    assign imm = inst[15:0];
    assign ex_imm = { {16{imm[15]}}, imm};
    
    assign opcode = inst[31:26];
    assign rs_addr = inst[25:21];
    assign rt_addr = inst[20:16];
    assign rd_addr = inst[15:11];
    assign shamt = inst[10:6];
    assign func = inst[5:0];
    
    ctrl Ctrl(
        .opcode(opcode),
        .func(func),
        
        .c1(c1),
        .c2(c2),
        .c3(c3),
        .c4(c4),
        .cA(cA),
        .cB(cB),
        .dmem_we(dmem_we),
        .reg_we(reg_we)
    );
    
    
    assign instr_index = inst[25:0];
    assign target = {pc_value[31:28],{instr_index,2'b0}};
    assign beq_imm = {inst[15:0],2'b0};
    assign offset = { {14{beq_imm[17]}} , beq_imm}; 
        
    pc PC(
        .clk(clk),
        .rst(rst),
        
        .ctrl(cB),
        .target(target),
        .offset(offset),
        
        .pc_value(pc_value)
    );
    
    
    assign alu_num1 = (c3==0)? rs_data: ex_imm;
    assign alu_num2 = (c1==0)? rt_data: ex_imm;
    
    alu ALU(
        .clk(clk),
        .rst(rst),
        .ctrl(cA),
        
        .alu_num1(alu_num1),
        .alu_num2(alu_num2),
        
        .ans(alu_ans)
    );
    
    assign wb_data = (c4==0)?alu_ans:mem_data;
    assign wb_addr = (c2==0)?rt_addr:rd_addr;
    
    regfile RegFile(
        .clk(clk),
        .rst(rst),
        .reg_we(reg_we),
        
        .rs_addr(rs_addr),
        .rt_addr(rt_addr),
        .wb_addr(wb_addr),
        .wb_data(wb_data),
        
        .rs_data(rs_data),
        .rt_data(rt_data)
    );
    
    
    dmem dMem(
        .clk(clk),
        .rst(rst),
        .we(dmem_we),
        
        ._addr(alu_ans),
        .w_data(rt_data),
        
        .r_data(mem_data)
    );
    
    
    imem iMem(
        .clk(clk),
        .rst(rst),
        
        .i_addr(pc_value),
        .o_data(inst)
    );
    
    
endmodule
