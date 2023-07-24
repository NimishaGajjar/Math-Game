require_relative 'player'

class Game

  # Initialize Game Players and current player"
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def start
    until game_over?
      generate_question
      display_scores
      ask_question
    end
    announce_winner
  end

  private 

   def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  # Method to generate question
  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  # Method to display scores
  def display_scores
    puts "----- Current Scores -----"
    puts "#{@player1.name}: #{score_fraction(@player1)}"
    puts "#{@player2.name}: #{score_fraction(@player2)}"
  end

  def score_fraction(player)
    "#{player.lives}/3"
  end

  # Method for asking question 
  def ask_question
    puts "#{@current_player.name}, What does #{@num1} plus #{@num2} equal?"
    answer = gets.chomp.to_i
    validate_answer(answer)
  end

  # Method for Validating answer
  def validate_answer(answer)
    correct_answer = @num1 + @num2
    if answer == correct_answer
      puts "Correct! #{@current_player.name}."
    else
      @current_player.reduce_life
      puts "Seriously? No! #{@current_player.name} loses a life."
    end
    #display_scores # Update the displayed scores after each turn
    switch_players
  end

  def switch_players
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  # Method for announce winner
  def announce_winner
    winner = (@player1.lives > 0) ? @player1 : @player2
    loser = (winner == @player1) ? @player2 : @player1
    puts "----- GAME OVER -----"
    puts "#{winner.name} wins with a score of #{score_fraction(winner)}."
    puts "#{loser.name} had #{score_fraction(loser)} remaining."
    puts "Goodbye!"
  end
end
