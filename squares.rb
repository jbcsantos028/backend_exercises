def is_perfect_square(number)
  interval = 0..number
  interval.each do |i|
      return true if i ** 2 == number 
  end
  false
end

p is_perfect_square(1234)