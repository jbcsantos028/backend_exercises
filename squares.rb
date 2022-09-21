def isPerfectSquare(number)
  last_i = 10000
  (0..last_i).each do |i|
    if i ** 2 == number
      puts "#{number} is perfect square"
      break
    elsif i == last_i && i ** 2 != number
      puts "#{number} is not perfect square"
    end
  end
end

isPerfectSquare(729)