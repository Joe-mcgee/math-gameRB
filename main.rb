require './Game.rb'
require './Player.rb'
require './Question.rb'
require './Turn.rb'

def init
  puts 'welcome to the math game, press any key to start'
  ready = gets.chomp
  puts 'please enter your name Player 1'
  player1_name = gets.chomp
  player1 = Player.new(player1_name)
  puts 'please enter your name Player 2'
  player2_name = gets.chomp
  player2 = Player.new(player2_name)
  game = Game.new(player1, player2)
  return game
end

new_game = init
puts new_game


