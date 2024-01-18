# regex to get name , email & phone-number from a string
# the orm data will always be in the same format
formData = "My name is abc xyz gender: F. You can contact me at email: abc@example.com or my work phone: 1234567890 i get paid $1000"
name = "name : " + formData.match(/My name is (\w+ \w+)/)[1].to_s
email = "email : " + formData.match(/email: (\w+@\w+\.\w+)/)[1].to_s
phone = "phone : " + formData.match(/phone: (\d+)/)[1].to_s
gender = formData.match(/gender: \w/).to_s
amount = "amount : " + formData.match(/\$(\d+)/).to_s
puts name , gender , email , phone , amount
