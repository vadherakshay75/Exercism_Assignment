# exercise
class Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W+/).collect(&:capitalize).map(&:chr).join
  end
end
