require 'byebug'
# Exercise 10
class Scrabble
  attr_accessor :str, :hash
  def initialize(str = '')
    @str = str
    @hash = {
      'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2, 'E' => 1, 'F' => 4, 'G' => 2,
      'H' => 4, 'I' => 1, 'J' => 8, 'K' => 5, 'L' => 1, 'M' => 3, 'N' => 1,
      'O' => 1, 'P' => 3, 'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1, 'U' => 1,
      'V' => 4, 'W' => 4, 'X' => 8, 'Y' => 4, 'Z' => 10
    }
  end

  def self.score(str)
    Scrabble.new(str).score
  end

  def score
    final_value = 0
    return final_value if str.nil?
    str.scan(/[a-zA-Z]/).map { |key| final_value += hash[key.upcase] }
    final_value
  end
end
