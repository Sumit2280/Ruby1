print 'Enter your name: '
inputname=gets.chomp
print 'Enter your gender: '
inputgender=gets.chomp
print 'Enter your email: '
inputemail=gets.chomp
print 'Enter your phone no: '
inputphone=gets.chomp
print 'Enter your payment: '
inputpay=gets.chomp


formData = "My name is #{inputname} gender: #{inputgender}. You can contact me at email: #{inputemail} or my work phone: #{inputphone} i get paid $#{inputpay}"
name = "name : " + formData.match(/My name is (\w+ \w+)/)[1].to_s
email = "email : " + formData.match(/email: (\w+@\w+\.\w+)/)[1].to_s
phone = "phone : " + formData.match(/phone: (\d+)/)[1].to_s
gender = formData.match(/gender: \w/).to_s
amount = "amount : " + formData.match(/\$(\d+)/).to_s
puts name , gender , email , phone , amount
