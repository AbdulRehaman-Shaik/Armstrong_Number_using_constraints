//Q) Write a constraint to generate Armstrong Number for a 3-digit number range from [100:999] ?

class packet;
  rand int unsigned num;
  rand int a;
  constraint c1{num inside {[100:999]};}
  constraint c2{num dist{153 := 2, 370 := 3, 371 := 2, 407 :=3, [100:999]:/5};}
  
  constraint c3{a == display();}
  
  function int display();
    int temp;
    int rem;
    int sum = 0;
    
    temp = num;
    $display("temp = %0d", temp);
    
    while(temp>0)
      begin
        rem = temp%10;
        sum = sum + (rem**3);
        temp = temp/10;
      end
  $display("sum = %0d",sum);
    
    if(num == sum)
      $display("It is Armstrong Number %0d",num);
    else
      $display("Not a Armstrong Number %0d",num);
    
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
