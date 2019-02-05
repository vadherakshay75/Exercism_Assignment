require 'byebug'
# Exercise 9
class Isogram
  def self.isogram?(str)
    str.downcase.scan(/[a-zA-Z]/).uniq == str.downcase.scan(/[a-zA-Z]/)
  end
end
