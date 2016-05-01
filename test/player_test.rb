require 'helper'

class PlayerTest < Minitest::Test
  def test_throw_returns_sum_of_dices
    dice_1 = LoadedDice.returning(1)
    dice_2 = LoadedDice.returning(2)
    player = Player.new([dice_1, dice_2])

    assert_equal 3, player.throw
  end
end
