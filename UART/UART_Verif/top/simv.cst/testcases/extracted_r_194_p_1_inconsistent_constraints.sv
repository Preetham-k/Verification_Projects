class c_194_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_194_1;
    c_194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx0zx111xxzzx0x0x0zxzzzxzz00xxxxzzzzzzxzzzxzxxzxxxzzzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
