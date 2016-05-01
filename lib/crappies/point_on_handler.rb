class PointOnHandler < ComeOutHandler
  protected

  def can_handle?(runs)
    runs.length > 1 && [4, 5, 6, 8, 9, 10].include?(runs.first)
  end

  def result(runs)
    return 'Player won' if runs.first == runs.last
    return 'Player lost' if runs.last == 7
  end
end
