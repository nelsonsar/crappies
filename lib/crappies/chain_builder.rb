module ChainBuilder
  def self.build
    immediate_win = ImmediateWinHandler.new
    immediate_loss = ImmediateLossHandler.new
    immediate_win.next = immediate_loss
    immediate_loss.next = PointOnHandler.new

    return immediate_win
  end
end
