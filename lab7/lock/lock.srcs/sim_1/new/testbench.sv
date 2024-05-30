`timescale 1ns / 1ps
module testbench;

reg[3:0] inputs;
reg mode;
reg clk, rst;
reg acc, rej;
reg alert;
reg [2:0] state;

task clock_cycle;
    begin
        clk = 1;
        #500;
        clk = 0;
        #500;
    end
endtask

task try_input;
    input [15:0] test_value;
    integer i;
    begin
        for (i = 0; i < 4; i = i + 1) begin
            inputs = test_value[i*4 +: 4];
            clock_cycle;
        end
    end
    mode = 1;
    clock_cycle; // ȷ������
endtask

task change_password;
    input [15:0] test_value;
    integer i;
    begin
        for (i = 0; i < 4; i = i + 1) begin
            inputs = test_value[i*4 +: 4];
            clock_cycle;
        end
    end
    mode = 0;
    clock_cycle; // ȷ������
endtask

initial begin
    // ��ʼ��
    clk = 0;
    rst = 0;
    mode = 0;
    #500;
    // ����Ա����: FFFF, ����: FFFF����ʼΪ����Ա���룩
    
    // ��֤
    try_input(16'hABCD); // ��һ�γ��� ABCD
    try_input(16'hFFFF); // �ڶ�����ȷ���� FFFF
    
    // �޸�
    change_password(16'h1234); // �޸�����Ϊ 1234
    
    // ��֤
    try_input(16'h4321); // ��һ�γ��� 4321
    try_input(16'hABCD); // �ڶ��γ��� ABCD
    try_input(16'h9876); // �����γ��� 9876
    try_input(16'h1234); // ���������� 1234 ���
    
    // �޸�
    change_password(16'hABAB); // �����޸�����Ϊ ABAB
    
    // ��֤
    try_input(16'hFFFF); // �����ù���Ա���� FFFF ���
    clock_cycle;
    
end

lock lk (.inputs(inputs), .mode(mode), .CLK(clk), .RST(rst), .acc(acc), .rej(rej), .alert(alert), .state(state));

endmodule
