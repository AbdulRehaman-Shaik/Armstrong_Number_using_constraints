//Q) Write a constraint to generate Armstrong Number for a 3-digit number range from [100:999] ?

class packet;
  rand int unsigned num;
  rand int a;
  constraint c1{num inside {[100:999]};}
  constraint c2{num dist{153 := 2, 370 := 3, 371 := 2, 407 :=3, [100:999]:/5};}
  
  constraint c3{a == display(num);}
  
  function int display(int b);
    int temp;
    int rem;
    int sum = 0;

   	temp = b;
    $display("temp = %0d", temp);
    
    while(b>0) 
      begin
        rem = b%10;
        sum = sum + (rem**3);
        b = b/10;
      end
  $display("sum = %0d",sum);
    
    if(sum == temp)
      $display("It is Armstrong Number %0d",temp);
    else
      $display("Not a Armstrong Number %0d",temp);
   
  endfunction
endclass

module test();
  packet p1;
  
  initial begin
    p1 = new();
    repeat(100) 
      begin
        p1.randomize();
      end
  end
endmodule                  
