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
      turn = Turn.new(@player1)
      turn.begin
      result = turn.question
      if result == false
        @player1.lose_life
      end
      puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
      turn2 = Turn.new(@player2)
      turn2.begin
      result2 = turn2.question
      if result2 == false
        @player2.lose_life
      end
      puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
    end
    if @player1.life == 0 && @player2.life == 0
      puts "Looks like a draw!"
      puts "----- Game Over -----"
      puts "goodBye"
      return
    end
    if @player1.life > 0
      puts "congratulations #{@player1.name} wins with a score of #{@player1.life}/3"
      puts "----- Game Over -----"
      puts "goodBye"
      return
    end
    if @player2.life > 0
      puts "congratulations #{@player2.name} wins with a score of #{@player2.life}/3"
      puts "----- Game Over -----"
      puts "goodBye"
      return
    end
  end
end


