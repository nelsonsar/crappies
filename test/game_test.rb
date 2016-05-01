require 'helper'

class GameTest < Minitest::Test
  def test_player_loses_with_snake_eyes
    dice_1 = LoadedDice.returning(1)
    dice_2 = LoadedDice.returning(1)

    player_loses(run_game([dice_1, dice_2]))
  end

  def test_player_loses_with_box_car_3
    dice_1 = LoadedDice.returning(1)
    dice_2 = LoadedDice.returning(2)

    player_loses(run_game([dice_1, dice_2]))
  end

  def test_player_loses_with_box_car_12
    dice_1 = LoadedDice.returning(6)
    dice_2 = LoadedDice.returning(6)

    player_loses(run_game([dice_1, dice_2]))
  end

  def test_player_wins_with_a_7
    dice_1 = LoadedDice.returning(1)
    dice_2 = LoadedDice.returning(6)

    player_wins(run_game([dice_1, dice_2]))
  end

  def test_player_wins_with_a_11
    dice_1 = LoadedDice.returning(5)
    dice_2 = LoadedDice.returning(6)

    player_wins(run_game([dice_1, dice_2]))
  end

  def test_player_wins_with_two_4_in_a_row
    player = Minitest::Mock.new
    player.expect(:throw, 4)
    player.expect(:throw, 4)

    game = Game.new(player)

    game.run

    player_wins(game)
  end

  def test_player_wins_with_a_4_and_a_5_and_a_4
    player = Minitest::Mock.new
    player.expect(:throw, 4)
    player.expect(:throw, 5)
    player.expect(:throw, 4)

    game = Game.new(player)

    game.run

    player_wins(game)
  end

  def test_player_loses_with_a_4_and_a_7
    player = Minitest::Mock.new
    player.expect(:throw, 4)
    player.expect(:throw, 7)

    game = Game.new(player)

    game.run

    player_loses(game)
  end

  def test_player_loses_with_a_4_and_a_5_and_a_7
    player = Minitest::Mock.new
    player.expect(:throw, 4)
    player.expect(:throw, 5)
    player.expect(:throw, 7)

    game = Game.new(player)

    game.run

    player_loses(game)
  end

  private

  def run_game(dices)
    player = Player.new(dices)
    game = Game.new(player)

    game.run

    game
  end

  def player_wins(game)
    assert_equal 'Player won', game.result.to_s
  end

  def player_loses(game)
    assert_equal 'Player lost', game.result.to_s
  end
end
