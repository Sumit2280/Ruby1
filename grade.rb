puts"enter the grade"
input = gets.chomp
grade = Integer(input)
if(grade<=5 and grade >=1)
    puts"elementry"
elsif(grade>=6 and grade<=8)
    puts"middle school"
elsif(grade>=9 and grade <=12)
    puts"high school"
else
    puts"college"
end
