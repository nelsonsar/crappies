class ImmediateLossHandler < ComeOutHandler
  protected

  def can_handle?(runs)
    runs.length == 1 && [2, 3, 12].include?(runs.first)
  end

  def result(runs)
    'Player lost'
  end
end
