require './Turn.rb'
class Game
  attr_writer :turn
  def initialize(player1, player2)
    @turn = 0
    @player1 = player1
    @player2 = player2
  end

  def flow(player)
    turn = Turn.new()
  end

end


