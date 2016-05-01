class ImmediateWinHandler < ComeOutHandler
  protected

  def can_handle?(runs)
    runs.length == 1 && [7, 11].include?(runs.first)
  end

  def result(runs)
    ResultFactory.win
  end
end
