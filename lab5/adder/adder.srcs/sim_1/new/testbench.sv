`timescale 1ns / 1ps
module testbench;

reg[3:0] a;
reg[3:0] b;
reg cin;
wire[3:0] s0;    // ������߶�����ܵ�λ
wire[1:0] s1;    // ������߶�����ܸ�λ

initial begin
    for (integer i = 0; i < 16; i++) begin
        for (integer j = 0; j < 16; j++) begin
            for (integer k = 0; k < 2; k++) begin
                a = i;
                b = j;
                cin = k;
                #500;
            end
        end
    end
end

adder_1_3 a13 (.A(a), .B(b), .Cin(cin), .seg0(s0), .seg1(s1));

endmodule
