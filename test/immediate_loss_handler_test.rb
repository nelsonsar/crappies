require 'helper'

class ImmediateLossHandlerTest < Minitest::Test
  def setup
    @handler = ImmediateLossHandler.new
  end

  def teardown
    @handler = nil
  end

  def test_return_player_lost_when_first_run_is_2
    runs = [2]

    assert_equal 'Player lost', @handler.handle(runs)
  end

  def test_return_player_lost_when_first_run_is_3
    runs = [3]

    assert_equal 'Player lost', @handler.handle(runs)
  end

  def test_return_player_lost_when_first_run_is_12
    runs = [12]

    assert_equal 'Player lost', @handler.handle(runs)
  end

  def test_return_null_when_first_run_is_not_2_or_3_or_12
    runs = [10]

    assert_equal nil, @handler.handle(runs)
  end
end
