require 'helper'

class ImmediateWinHandlerTest < Minitest::Test
  def setup
    @handler = ImmediateWinHandler.new
  end

  def teardown
    @handler = nil
  end

  def test_player_won_when_first_run_is_7
    runs = [7]

    assert_equal 'Player won', @handler.handle(runs).to_s
  end

  def test_player_won_when_first_run_is_11
    runs = [11]

    assert_equal 'Player won', @handler.handle(runs).to_s
  end

  def test_game_continues_when_first_run_is_not_7_or_11
    runs = [12]

    assert_equal 'The game continues...', @handler.handle(runs).to_s
  end
end
