# exercise
class Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W+/).map { |item| item[0] }.join.upcase
  end
end
