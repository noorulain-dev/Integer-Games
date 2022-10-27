require './input_functions'

def showarray(array_b)
   for count in 0..(array_b.length-1)
     puts array_b[count]
   end
end

def main
array_a = Array.new(10)
store_int = 5
highest_value = store_int
for count in 0..(array_a.length-1)
   array_a[count] = store_int
   store_int -=1
end

showarray(array_a)

puts "Enter a new integer"
new_int = gets.chomp.to_i

index = read_integer_in_range("Select an index in this array to store the integer", 0, (array_a.length-1))

array_a[index] = new_int

puts showarray(array_a)

sum = 0
for count in 0..(array_a.length-1)
   if (array_a[count] > 0)
      sum = sum + array_a[count]
   end
end

puts "The total of all positive integers in the array: #{sum}"
if (new_int > highest_value)
highest_value = new_int

elsif (new_int < highest_value && index == 0)
highest_value = array_a[1]
end

puts "The highest value in the array: #{highest_value}"

end

main