require 'byebug'
# Exercise 7
class Hamming
  def self.compute(str1, str2)
    @str1 = str1
    @str2 = str2
    raise ArgumentError if @str1.length != @str2.length
    p @str1.chars.zip(@str2.chars).count{ |st1, st2| st1 != st2 }
  end
end
Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')
# 