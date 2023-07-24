# Class for player initializes with name and lives
class Player 
  attr_reader :name, :lives, :score

   # Initialize name and lives
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  # Method to reduce life
  def reduce_life 
    @lives -= 1
  end

end
