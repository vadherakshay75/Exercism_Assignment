require 'byebug'
# Exercise 5
class Series
  attr_accessor :str
  def initialize(str)
    @str = str
  end

  def slices(length_of_str)
    raise ArgumentError if length_of_str > str.length
    str_array = []
    for i in 0..(str.length - length_of_str) do
      str_array << str[i..(i + length_of_str - 1)]
    end
    str_array
  end
end
series = Series.new('01234')
series.slices(1)
