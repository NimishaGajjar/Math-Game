# Description:
# 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Details: 
# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

# Task-1 : Extract Nouns for Classes
# Nouns: Player, MathGame

# Task-2 : Write their roles
# 1. Player Class:
# Role: The Player class will represent each individual player in the game. It will encapsulate the logic for player-related data and behavior, such as player name, lives count, answering questions, losing lives, and getting player scores.

# 2. Game class:
# Role: The Game class will manage the overall flow of the game. It will handle generating math questions, keeping track of the current player, checking answers, updating scores, and announcing the winner at the end of the game.

# Task 3: Write down the methods for each class

# Player class:

# Relevant Information: Player name, number of lives, current score

#Initialization: The Player class will need the player's name to be initialized, and the number of lives can be set to a default value (e.g., 3).

#Public Methods:

#reduce_life: To reduce a life when the player answers a question incorrectly.
#increase_score: To increase the player's score when they answer a question correctly.
#get_name: To get the player's name.
#get_lives: To get the number of lives remaining.
#get_score: To get the player's current score.

#Game class:

#Relevant Information: Two player objects, current player, game status (ongoing or finished)

#Initialization: The Game class will be initialized with two Player objects representing the two players of the game.

#Public Methods:
#start: To start the game and run the game loop.
#generate_question: To generate a random math question (addition) for the current player's turn.
#ask_question: To prompt the current player with the generated question and get their answer.
#validate_answer: To check if the player's answer is correct or incorrect.
#update_scores: To update the scores for both players at the end of each turn.
#announce_winner: To announce the winner and the other player's final score when the game ends.

#Which class will contain the game loop?
#The game loop will be contained within the Game class. Each instance of the loop will represent the other player's turn.


#Which class should manage who the current_player is?
#The Game class should manage who the current_player is. It will keep track of which player's turn it is and switch the current_player after each turn.

#Which class(es) will contain user I/O, and which will not have any?
#The Game class will contain user I/O, as it will handle displaying questions, receiving answers from players, and announcing scores and the winner.

#The Player class will not have any user I/O since it is responsible for storing player data and behavior only.