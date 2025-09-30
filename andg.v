module andg(y,a,b);
  input a,b;
  output y;
  andg a1(y,a,b);
endmodule;
module andg_tb;
  reg a,b;
  wire y;
  initial begin
    a=0;b=0;
    #5 a=0;b=1;
    #5 a=1;b=0;
    #5 a=1;b=1;
    #5 $finish;
  end
  initial begin
    $monitor($time,"a=%b,b=%b,y=%b",a,b,y);
  end
endmodule
    
  
