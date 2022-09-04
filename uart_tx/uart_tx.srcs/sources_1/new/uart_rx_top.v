module uart_display(
    input           I_clk       , //系统100MHz时钟
    input           I_rst_n     , //系统全局复位
    input           I_rs232_rxd , //接收的串行数据，在硬件上与串口相连
    //output          O_rs232_txd , //发送的串行数据，在硬件上与串口相连
    output [6:0]    O_led       , //七段数码管段选信号
    output [1:0]    O_px          //七段数码管位选信号
    );

    wire            W_bps_tx_clk         ;
    wire            W_bps_tx_clk_en      ;
    wire            W_bps_rx_clk         ;
    wire            W_bps_rx_clk_en      ;
    wire            W_tx_start           ;
    wire            W_tx_done            ;
    wire            W_rx_done            ;
    wire   [7:0]    W_para_data          ;
    wire   [7:0]    W_rx_para_data       ;

    reg    [7:0]    R_led_reg            ;

    baudrate_gen0 U_baudrate_gen
    (
        .I_clk              (I_clk          ), //系统100MHz时钟
        .I_rst_n            (I_rst_n        ), //系统全局复位
        //.I_bps_tx_clk_en    (W_bps_tx_clk_en), //串口发送模块波特率时钟使能信号
        .I_bps_rx_clk_en    (W_bps_rx_clk_en), //串口接收模块波特率时钟使能信号
        //.O_bps_tx_clk       (W_bps_tx_clk   ), //发送模块波特率产生时钟
        .O_bps_rx_clk       (W_bps_rx_clk   )  //接收模块波特率产生时钟
    );

    uart_rx U_uart_rxd
    (
        .I_clk              (I_clk          ), //系统100MHz时钟
        .I_rst_n            (I_rst_n        ), //系统全局复位
        .I_rx_start         (1'b1           ), //接收使能信号
        .I_bps_rx_clk       (W_bps_rx_clk   ), //接收波特率时钟
        .I_rs232_rxd        (I_rs232_rxd    ), //接收的串行数据，在硬件上与串口相连
        .O_bps_rx_clk_en    (W_bps_rx_clk_en), //波特率时钟使能信号
        .O_rx_done          (W_rx_done      ), //接收完成标志
        .O_para_data        (W_rx_para_data )  //接收到的8-bit并行数据
    );

    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(I_rst_n)
            R_led_reg <= 0;
        else if (W_rx_done)//接收到一个字节
            R_led_reg <= W_rx_para_data;
    end

    light_show U_light_show
    (
        .I_clk              (I_clk          ),
        .I_rst_n            (I_rst_n        ),
        .I_show_num         (R_led_reg      ),
        .O_led              (O_led          ),
        .O_px               (O_px           )
    );
    
endmodule