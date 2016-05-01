class Player
  def initialize(dices)
    @dices = dices
  end

  def throw
    @dices.inject(0) { |sum, dice| sum += dice.roll }
  end
end
