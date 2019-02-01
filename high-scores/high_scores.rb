# exercise 4
class HighScores
  def initialize(a)
    @a = a
  end

  def scores
    @a
  end

  def latest
    @a[-1]
  end

  def personal_best
    @a.max
  end

  def personal_top
    @a.sort.reverse[0..2]
  end

  def report
    if @a.max == @a[-1]
      "Your latest score was #{@a[-1]}. That's your personal best!"
    else
      x = "Your latest score was #{@a[-1]}."
      y = " That's #{@a.max-@a[-1]} short of your personal best!"
      x + y
    end
  end
end
