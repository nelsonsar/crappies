require 'helper'

class ImmediateWinHandlerTest < Minitest::Test
  def setup
    @handler = ImmediateWinHandler.new
  end

  def teardown
    @handler = nil
  end

  def test_return_player_won_when_first_run_is_7
    runs = [7]

    assert_equal 'Player won', @handler.handle(runs)
  end

  def test_return_player_won_when_first_run_is_11
    runs = [11]

    assert_equal 'Player won', @handler.handle(runs)
  end

  def test_return_null_when_first_run_is_not_7_or_11
    runs = [12]

    assert_equal nil, @handler.handle(runs)
  end
end
