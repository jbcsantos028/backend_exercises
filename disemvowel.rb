def disemvowel(string)
  new_arr = []
  
  string.downcase.each_char do |char|
    unless char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'
      new_arr << char
    end
  end
  
  new_arr.join('')
end

p disemvowel("This website is for losers LOL!")