北京理工大学 MIPS 指令集 CPU 设计系列教学实验

本仓库保存 bitmips experiments 的实验代码，可以将此仓库克隆到本地。

```bash
git clone https://github.com/bit-mips/bitmips_experiments.git
```

**请参考[实验指导手册](https://github.com/bit-mips/bitmips_experiments_doc)来做实验。**





`lab* `文件夹下是教学框架对应的实验。

`MyCPU` 文件夹是个人实现的单周期mips32 CPU，内存采用寄存器模拟，也可替换成coe。支持指令如下：

| 指令  | opcode | function |
| ----- | ------ | -------- |
| Lui   | 001111 | /        |
| Addiu | 001001 | /        |
| Add   | 000000 | 100000   |
| Lw    | 100011 | /        |
| Sw    | 101011 | /        |
| Beq   | 000100 | /        |
| J     | 000010 | /        |
| SLL   | 000000 | 000000   |
| Ori   | 001101 | /        |



`peripheral_device` 下是个人实现的一个可在ES332板上运行的uart接收串口以及LED显示模块。

`uart_tx`下是个人实现的一个可以与CPU连接集成的成组的UART发送与接受串口，其中发送串口与CPU写内存的数据与地址线相连，接受串口与led显示模块连接。总的来说是封装了`peripheral_device` 之后，加上了发送串口与耦合逻辑。

`CPU_control_module_instruction.xls`是单周期CPU中指令解析和控制信号生成模块的输入输出说明。
