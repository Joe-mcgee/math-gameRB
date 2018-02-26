require './Turn.rb'

class Game
  attr_writer :turn
  attr_accessor :player1, :player2

  def initialize
    @turn = 0
    start
    @player1 = init(1)
    @player2 = init(2)
  end

  def start
    puts 'welcome to the math game, press any key to start'
    ready = gets.chomp
  end

  def init(player_number)
    puts "please enter your name Player #{player_number}"
    player_name = gets.chomp
    return Player.new(player_name)
  end

  def play
    while @player1.life > 0 && @player2.life > 0 do
      turn = Turn.new(player)
    end
  end
end


