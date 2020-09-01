class c_176_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_176_1;
    c_176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzxz1100100zz0z0zx0x1xz0z1xxxzzxzzxzzxzzxzxzzxzxxxzxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
