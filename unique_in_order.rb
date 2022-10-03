def unique_in_order(sequence)
  list = []
  ctr = 0
  if sequence.class == Array
    sequence.each do |i|
      if i != list[ctr - 1]
        list << i
        ctr += 1
      end
    end
  end
  if sequence.class == String
    sequence.each_char do |char|
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