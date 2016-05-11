class Game

  attr_reader :result

  def initialize(player)
    @player = player
    @runs = []
    @chain = ChainBuilder.build
  end

  def run
    @runs << @player.throw

    @result = @chain.handle(@runs)

    run unless @result.game_over?
  end
end
