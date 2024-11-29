//Q) Write a constraint to check generated number between [100:1000] is Armstrong Number or Not?
//Armstrong Numbers are 153,370,371,407 thses are the Armstrong Numbers between [100:1000]

class packet;
  randc bit [3:0] a;
  randc bit [3:0] b;
  randc bit [3:0] c;
  rand int num;
  
  constraint c1{a inside {1,3,4};}
  constraint c2{b inside {0,5,7};}
  constraint c3{c inside {0,1,3,7};}
  
  constraint c4{num == display();}
  
  function int display();
    int first_digit;
    int middle_digit;
    int last_digit;
    int concatenate;
    int cube_sum;
    
    first_digit = a;
    middle_digit = b;
    last_digit = c;
    concatenate = (a*100)+(b*10)+c;
    cube_sum = (a**3)+(b**3)+(c**3);
    
    if(concatenate == cube_sum)
      $display("It is a Armstrong Number %0d",concatenate);
    else
      $display("Not a Armstrong Number %0d",concatenate);
    
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
                    
