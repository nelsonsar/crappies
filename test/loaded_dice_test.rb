require 'helper'

class LoadedDiceTest < Minitest::Test
  def test_roll_return_defined_result
    dice = LoadedDice.returning(2)

    assert_equal 2, dice.roll
  end
end
