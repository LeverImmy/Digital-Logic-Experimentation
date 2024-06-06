`timescale 1ns / 1ps
module testbench;

reg clk;
reg rst;
reg[6:0] high;          // ���������ܸ�λ
reg[6:0] low;           // ���������ܵ�λ

initial begin
    clk = 0;
    rst = 0;
    #500
    rst = 1;            // ��һ������������
    #500
    rst = 0;            // RST ����Ϊ 0
    #500
    for (integer i = 0; i < 200; i++) begin
        #500 clk = ~clk;
    end
end

counter c (.CLK(clk), .RST(rst), .High(high), .Low(low));

endmodule
