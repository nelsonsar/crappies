class PointOnHandler < ComeOutHandler
  protected

  def can_handle?(runs)
    runs.length > 1 && [4, 5, 6, 8, 9, 10].include?(runs.first)
  end

  def result(runs)
    return ResultFactory.win if runs.first == runs.last
    return ResultFactory.loss if runs.last == 7

    return ResultFactory.undefined
  end
end
