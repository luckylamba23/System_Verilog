// Code your testbench here
// or browse Examples
interface counter_if();
  logic clk;
  logic rst;
  logic [1:0] q;
  
endinterface


program Counter_test(counter_if counter);
  initial begin
    counter.clk <= 1'b0;
    counter.rst <= 1'b0;
    #5 counter.rst <= 1'b1;
  end

  initial begin
    forever begin
      #5 counter.clk <= ~counter.clk;
      $display("Test output: q = %b", counter.q);
    end
  end

  initial begin
    #50 $finish;
  end
endprogram






