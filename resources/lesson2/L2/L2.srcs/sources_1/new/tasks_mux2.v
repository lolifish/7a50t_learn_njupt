`timescale 1ns / 1ps

module tasks_mux2(
    input a0, a1, sel,
    output reg led
    );

    always @(*) begin
        case (sel)
            1'b0: led=a0;
            1'b1: led=a1;
        endcase
    end
endmodule
