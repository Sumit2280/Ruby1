arr1=[]
arr2=[]
common_numbers=[]

p 'Number of elements you want to add in 1st array'
n1=gets.to_i

for i in 1..n1 do
  arr1<<gets.to_i
end

p 'Number of elements you want to add in 2nd array'
n2=gets.to_i

for i in 1..n2 do
  number=gets.to_i
  arr2<<number
  if arr1.include?(number)
    common_numbers<<number 
  end
end

p "The first array is #{arr1}"
p "The second array is #{arr2}"
p "Common numbers in both arrays are #{common_numbers} "