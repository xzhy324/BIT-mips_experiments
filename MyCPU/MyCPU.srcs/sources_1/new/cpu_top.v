`timescale 1ns / 1ps

module cpu_top(
    input clk,
    input rst
    );
    
    wire [31:0] pc_value;
    
    wire [31:0] inst;//instruction
    wire [15:0] imm;//part of instruction
    wire [31:0] ex_imm; //output of sig_extend module
    wire [31:0] exz_imm;//intermediate variable for sig_ex
    wire [31:0] exs_imm;//intermediate variable for sig_ex
    wire [5:0] opcode;//part of instruction
    wire [5:0] func;//part of instruction
    wire [4:0] shamt;//part of instruction
    wire [25:0] instr_index;//part of instruction
    
    //control signal
    wire c1,c2,c3,c4,cexz;
    wire [3:0] cA;
    wire [1:0] cB;
    wire dmem_we, reg_we;
    
    //alu wire
    wire [31:0] alu_num1;
    wire [31:0] alu_num2;
    wire [31:0] alu_ans;
    
    //regfile wire
    wire [31:0] rs_data;
    wire [31:0] rt_data;
    wire [31:0] wb_data;
    wire [4:0] wb_addr;
    wire [4:0] rs_addr;
    wire [4:0] rt_addr;
    wire [4:0] rd_addr;
    
    //data read from data_memory
    wire [31:0] mem_data;
    
    
    
    
    //sig_extend module
    assign imm = inst[15:0];
    assign exz_imm = {16'b0,imm};
    assign exs_imm = { {16{imm[15]}}, imm};
    assign ex_imm = (cexz==0)?exz_imm:exs_imm;
    
    //decode module
    assign opcode = inst[31:26];
    assign rs_addr = inst[25:21];
    assign rt_addr = inst[20:16];
    assign rd_addr = inst[15:11];
    assign shamt = inst[10:6];
    assign func = inst[5:0];
    assign instr_index = inst[25:0];
    
    //control module
    ctrl Ctrl(
        .opcode(opcode),
        .func(func),
        
        .c1(c1),
        .c2(c2),
        .c3(c3),
        .c4(c4),
        .cexz(cexz),
        .cA(cA),
        .cB(cB),
        .dmem_we(dmem_we),
        .reg_we(reg_we)
    );
    
    //(pc + br_unit) module
    pc PC(
        .clk(clk),
        .rst(rst),
        
        .ctrl(cB),
        .instr_index(instr_index),
        .beq_mark(alu_ans[0]),
        
        .pc_value(pc_value)
    );
    
    //alu module
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
    
    //regfile module
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
    
    //data_memory module
    dmem dMem(
        .clk(clk),
        .rst(rst),
        .we(dmem_we),
        
        ._addr(alu_ans),
        .w_data(rt_data),
        
        .r_data(mem_data)
    );
    
    //instruction_memory module
    imem iMem(
        .clk(clk),
        .rst(rst),
        
        .i_addr(pc_value),
        .o_data(inst)
    );
    
    
endmodule
