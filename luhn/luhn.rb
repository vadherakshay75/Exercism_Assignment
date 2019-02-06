require 'byebug'
# Exercise 11
class Luhn
  attr_accessor :sum
  def self.valid?(number)
    num_array = number.scan(/\S/).map { |i|
      i = Integer(i) rescue false
    }.reverse
    return false if num_array.length <= 1
    Luhn.validate(num_array)
  end

  def self.validate(num_array)
    num_array.each_with_index do |num, index|
      return p num if num == false
      temp = 0
      if (index - 1).modulo(2).zero?
        temp = num * 2 
        temp > 9 ? num_array[index]=temp - 9 : num_array[index] = temp
      end
    end
    Luhn.sum(num_array).modulo(10).zero?
  end

  def self.sum(array)
    data = 0
    array.each do |a|
      data += a unless a.nil?
    end
    p data
  end
end
