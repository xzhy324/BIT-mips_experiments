module uart_display(
    input           I_clk       , //ϵͳ100MHzʱ��
    input           I_rst_n     , //ϵͳȫ�ָ�λ
    input           I_rs232_rxd , //���յĴ������ݣ���Ӳ�����봮������
    //output          O_rs232_txd , //���͵Ĵ������ݣ���Ӳ�����봮������
    output [6:0]    O_led       , //�߶�����ܶ�ѡ�ź�
    output [1:0]    O_px          //�߶������λѡ�ź�
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
        .I_clk              (I_clk          ), //ϵͳ100MHzʱ��
        .I_rst_n            (I_rst_n        ), //ϵͳȫ�ָ�λ
        //.I_bps_tx_clk_en    (W_bps_tx_clk_en), //���ڷ���ģ�鲨����ʱ��ʹ���ź�
        .I_bps_rx_clk_en    (W_bps_rx_clk_en), //���ڽ���ģ�鲨����ʱ��ʹ���ź�
        //.O_bps_tx_clk       (W_bps_tx_clk   ), //����ģ�鲨���ʲ���ʱ��
        .O_bps_rx_clk       (W_bps_rx_clk   )  //����ģ�鲨���ʲ���ʱ��
    );

    uart_rx U_uart_rxd
    (
        .I_clk              (I_clk          ), //ϵͳ100MHzʱ��
        .I_rst_n            (I_rst_n        ), //ϵͳȫ�ָ�λ
        .I_rx_start         (1'b1           ), //����ʹ���ź�
        .I_bps_rx_clk       (W_bps_rx_clk   ), //���ղ�����ʱ��
        .I_rs232_rxd        (I_rs232_rxd    ), //���յĴ������ݣ���Ӳ�����봮������
        .O_bps_rx_clk_en    (W_bps_rx_clk_en), //������ʱ��ʹ���ź�
        .O_rx_done          (W_rx_done      ), //������ɱ�־
        .O_para_data        (W_rx_para_data )  //���յ���8-bit��������
    );

    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(I_rst_n)
            R_led_reg <= 0;
        else if (W_rx_done)//���յ�һ���ֽ�
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