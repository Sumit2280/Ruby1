p 'Enter the number'
num=gets.chomp

ans=0

num.split("").each do |i|
  ans+=i.to_i
end

p ans

