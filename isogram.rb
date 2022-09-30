def is_isogram(input_string)
  new_string = input_string.downcase.split('')
  ctr = 0
  unique_ctr = 0
  
  while ctr < new_string.length do
    char_to_compare = new_string[ctr]
    new_string.each do |i|
      if i == char_to_compare
        unique_ctr += 1
      end
    end
    if unique_ctr > 1
      return false
    else
      ctr += 1
      unique_ctr = 0
    end
  end
  true
end

p(is_isogram("AfFecTed"))