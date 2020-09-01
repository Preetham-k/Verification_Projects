class c_134_4;
    bit[25:0] clk_freq = 26'hf4240;

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_134_4;
    c_134_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz11z1z11zz0101xzx0z01z110x10xzxxxxzzxzzxxzxzxzzzxxxzzxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram