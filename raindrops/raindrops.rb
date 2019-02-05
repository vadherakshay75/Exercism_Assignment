require 'byebug'
# Exercise 8
class Raindrops
  def self.convert(data)
    op = ''
    op += 'Pling' if data.modulo(3).zero?
    op += 'Plang' if data.modulo(5).zero?
    op += 'Plong' if data.modulo(7).zero?
    op = data.to_s if op.empty?
    op
  end
end
