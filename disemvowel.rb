def disemvowel(string)
  new_arr = []
  
  string.each_char do |char|
    unless char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u' || char == 'A' || char == 'E' || char == 'I' || char == 'O' || char == 'U'
      new_arr << char
    end
  end
  new_arr.join('')
end

p disemvowel("This website is for losers LOL!")