=begin
#Solution to no. 1
array_sample = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_sample.each { |element| puts "Current number is: #{element}" }
=end

=begin
#Solution to no. 2
h = {a:1, b: 2, c:3, d:4}
puts "The value of key:b is #{h[:b]}"
puts "adding a new item..."
h[:e] = 5
p h
=end

#Solution to no. 3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

contacts["John Cruz"].store(:email, contact_data[0][0])
contacts["John Cruz"].store(:address, contact_data[0][1])
contacts["John Cruz"].store(:phone, contact_data[0][2])

contacts["Avion School"].store(:email, contact_data[1][0])
contacts["Avion School"].store(:address, contact_data[1][1])
contacts["Avion School"].store(:phone, contact_data[1][2])

p contacts

