class Game

  attr_reader :result

  def initialize(player)
    @player = player
    @runs = []
    @chain = build_chain
  end

  def run
    @runs << @player.throw

    @result = @chain.handle(@runs)

    run unless @result.game_over?
  end

  private

  def build_chain
    immediate_win = ImmediateWinHandler.new
    immediate_loss = ImmediateLossHandler.new
    immediate_win.next(immediate_loss)
    immediate_loss.next(PointOnHandler.new)

    return immediate_win
  end
end
