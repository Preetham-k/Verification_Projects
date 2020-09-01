class c_28_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_28_1;
    c_28_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zxzz0xxxzx0x1xzx0zxxz1xxx1101xzzxzzzxzzxxxzzzxzxxxzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram