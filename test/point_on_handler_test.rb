require 'helper'

class PointOnHandlerTest < Minitest::Test
  def setup
    @handler = PointOnHandler.new
  end

  def teardown
    @handler = nil
  end

  def test_return_player_won_when_second_run_is_equal_first_run
    runs = [4, 4]

    assert_equal 'Player won', @handler.handle(runs).to_s
  end

  def test_return_player_lost_when_7_happens_before_equal_result
    runs = [4, 7]

    assert_equal 'Player lost', @handler.handle(runs).to_s
  end

  def test_return_null_when_result_is_not_seven_and_not_equal_first_run
    runs = [4, 5]

    assert_equal 'The game continues...', @handler.handle(runs).to_s
  end
end
