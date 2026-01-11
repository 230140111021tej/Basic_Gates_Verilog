`include "basic_gates.v"

module test_gates;
    reg a, b;
    wire and_out, or_out, nand_out, nor_out, xor_out, xnor_out, not_out;

    // Instantiate gates with DUT (no underscores) and positional port connection
    and_gate  u1(a, b, and_out);
    or_gate   u2(a, b, or_out);
    nand_gate u3(a, b, nand_out);
    nor_gate  u4(a, b, nor_out);
    xor_gate  u5(a, b, xor_out);
    xnor_gate u6(a, b, xnor_out);
    not_gate  u7(a, not_out);


    initial begin
        $display("A B | AND OR NAND NOR XOR XNOR NOT");
        $dumpfile("gates.vcd");
        $dumpvars(0, test_gates);

        for (integer i = 0; i < 4; i = i + 1) begin
            a = i[1];
            b = i[0];
            #1;
            $display("%b %b |  %b   %b   %b    %b    %b    %b    %b", 
                a, b, and_out, or_out, nand_out, nor_out, xor_out, xnor_out, not_out);
        end
        $finish;
    end
endmodule
