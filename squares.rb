def isPerfectSquare(number)
  interval = 0..10000
  interval.each do |i|
    if i ** 2 == number
      puts "#{number} is perfect square"
      break
    elsif i == interval.last && i ** 2 != number
      puts "#{number} is not perfect square"
    end
  end
end

isPerfectSquare(0)