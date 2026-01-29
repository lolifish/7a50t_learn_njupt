`timescale 1ns / 1ps

module task1_key_led(
    input key,
    output reg led
    );

    always @(*) begin
        led = key;
    end

endmodule
