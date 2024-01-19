puts "Enter an integer:"
n = gets.to_i
flag = true;
for a in 2..Math.sqrt(n) do 
    if(n%a==0)
        flag=false
        break
    end
end
if(flag)
    puts "#{n} is a prime number"
else
    puts "#{n} is not a prime number"
end
