class HighScores
attr_accessor :scores, :highest, :latest, :top, :report

def initialize(scores = [])
  @scores = scores
  @highest = scores.max
  @latest = scores.last
  @top = scores.size >= 3 ? scores.sort.reverse.first(3) : scores.sort.reverse
  @report = "Your latest score was #{latest}. #{report_message}"
end

private

def report_message
  highest == latest ? "That's your personal best!" :
  "That's #{highest - latest} short of your personal best!"
end
end
HighScores.new([1,2,30,50,40])