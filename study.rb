=begin
array = [34, -345, -1, 100]
min = array[0]
array.each { |i| min = i if i < min }
puts min
=end

class Employee
  attr_accessor :active
  def initialize
    @active = true
  end

  def resign
    active = false
    puts active
  end
end

Employee.new.resign