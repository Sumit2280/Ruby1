puts "Enter an integer:"
input = gets.chomp
n = Integer(input)
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
