`timescale 1ns/1ns

module tb;

reg clk = 1;
reg rst_n = 1;
wire dout;

move dut(
    .clk(clk),
    .data(16'b1001101110010101),
    .rst_n(rst_n),
    .dout(dout)
);

always #10 clk = ~clk;

initial begin
    #20;
    rst_n = 0;
    #20;
    rst_n = 1;
    #10000;
    $finish;
end


endmodule

