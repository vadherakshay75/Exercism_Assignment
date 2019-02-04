require 'byebug'
# Exercise 6
class Phrase
  attr_accessor :str, :str_array, :wrd, :cnt
  def initialize(str)
    @str = str.downcase
    @words = Hash.new(0)
    @str_array = @str.scan(/\b[\w']+\b/)
  end

  def word_count
    @str_array.each do |word|
      @words[word] += 1
    end
    p @words
  end
end
