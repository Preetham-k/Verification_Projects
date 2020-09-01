class c_158_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_158_1;
    c_158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0x1x0001x0x101100101x10z0zxxzzxxxzxzxxxzzzxzzxxxzzzzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
