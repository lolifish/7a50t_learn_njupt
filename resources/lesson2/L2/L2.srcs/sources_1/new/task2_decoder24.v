module task2_decoder24(
    input a0, a1,
    output reg b0,
    output reg b1,
    output reg b2,
    output reg b3
    );

    always @(*) begin
        b0=0; b1=0; b2=0; b3=0;
        case ({a1, a0})
            2'b00: b0=1;
            2'b01: b1=1;
            2'b10: b2=1;
            2'b11: b3=1;
        endcase
    end
endmodule
