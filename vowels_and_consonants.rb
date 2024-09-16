p 'Enter the string:'
string=gets.chomp

regex=/[aeiou]/i

vowels=0

consonants=0

string.split("").each do |a| 
  if(/[a-z]/i.match(a))
    if regex.match(a)
      vowels+=1 
    else
      consonants+=1
    end
  end 
end

p "vowels are: #{vowels}"
p "consonants are: #{consonants}"

