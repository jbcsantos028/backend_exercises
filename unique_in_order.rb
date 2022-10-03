def unique_in_order(string)
  list = []
  ctr = 0
  if string.class == Array
    string.each do |i|
      if i != list[ctr - 1]
        list << i
        ctr += 1
      end
    end
  end
  if string.class == String
    string.each_char do |char|
      if char != list[ctr - 1]
        list << char
        ctr += 1
      end
    end
  end
  list
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1,2,2,3,3])