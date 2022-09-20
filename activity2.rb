#Solution to no. 1

=begin
arr = [1, 3, 5, 7, 9, 11]
number = 23

arr.each do |element|
  if element == number
    puts "#{number} is in the array"
    break
  elsif arr[arr.size - 1] == element && element !=number
    puts "#{number} is not in the array"
  end
end
=end

#Solution to no. 2
=begin
print "Enter a number: "
number = gets.chomp.to_i

if number >= 0 && number <= 50
  puts "#{number} is in between 0 and 50"
elsif number > 50 && number <= 100
  puts "#{number} is in between 51 and 100"
elsif number > 100
  puts "#{number} is above 100"
else
  puts "#{number} is a negative number"
end
=end

#Solution to no. 3
=begin
print "Enter a string: "
input = gets.chomp

until input.upcase == "STOP"
  puts "This is the user's input: #{input}"
  print "Enter a string: "
  input = gets.chomp
end
=end

#Solution to no. 4
#begin
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []

arr.each do |element|
  new_arr.append(element) if element.even? 
end

print "This is the original array: "
p arr
print "This is the new array: "
p new_arr
#end

# experiment on select
=begin
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

new_arr = arr.select { |element| element.even? }
puts "Old array: #{arr}"
puts "New array: #{new_arr}"
=end