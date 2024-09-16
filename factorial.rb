p 'Enter the number'
num=gets.to_i

factorial=1

num.downto(1){|x| factorial*=x}

p factorial

