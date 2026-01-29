`timescale 1ns / 1ps

module task1_key_led_tb(
    );

    reg key;
    wire led;

    task1_key_led u_task1_key_led(
        .key ( key ),
        .led  ( led  )
    );

    initial begin
        key = 0;
        #200
        key = 1;
        #200
        key = 0;
    end
endmodule
