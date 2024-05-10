// ʹ�� SystemVerilog �Դ��ļӷ�����ʵ����λȫ����

module adder_2 (
    input wire[3:0] A,
    input wire[3:0] B,
    input wire Cin,
    output wire [3:0] seg0,    // ������߶�����ܵ�λ
    output wire [1:0] seg1     // ������߶�����ܸ�λ
);

    wire[4:0] F;
    assign F = {1'b0, A} + {1'b0, B} + Cin;
    
    // ���ˣ�F[4:0] ��ʾһ�� [0, 31] ������
    // seg1 Ϊ��λ [0, 3]��seg0 Ϊ��λ [0, 9]
    
    assign seg1 = F / 10;
    assign seg0 = F % 10;

endmodule
