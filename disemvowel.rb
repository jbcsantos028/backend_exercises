def disemvowel(string)
  new_arr = []
  vowel = ['a', 'e', 'i', 'o', 'u']
  
  string.each_char do |char|
    new_arr << char unless vowel.include?(char.downcase)
  end

  new_arr.join('')
end

p disemvowel("This website is for losers LOL!")