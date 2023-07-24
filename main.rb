require_relative 'game'

puts "Welcome to the 2-Player Math Game!"
print "Player 1, please enter your name: "
player1_name = gets.chomp

print "Player 2, please enter your name: "
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.start