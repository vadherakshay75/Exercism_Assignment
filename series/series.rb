require 'byebug'
# Exercise 5
class Series
  attr_accessor :str_array, :length_of_str, :data, :array
  def initialize(str)
    @str = str
    @length_of_str = length_of_str
    @str_array = str_array
  end

  def slices(length_of_str)
    raise ArgumentError if length_of_str > @str.length
    @str_array = []
    for i in 0..(@str.length-length_of_str) do
      @str_array << @str[i..(i + length_of_str - 1)]
    end
    @str_array
  end
end
