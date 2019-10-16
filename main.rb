require_relative 'player'
require_relative 'user_interface'
require_relative 'game_data'

ui = User_interface.new()
game = Game_data.new()

player1 = Player.new(1)
player2 = Player.new(2)

game.createQuestion()
ui.question(player1, game.question)
game.get_answer()
if(game.evaluate_answer())
  game.correct(player1)
else 
  game.incorrect(player1)
end
ui.show_lives(player1, player2)
puts ui.new_turn

game.createQuestion()
ui.question(player2, game.question)
game.get_answer()
if(game.evaluate_answer())
  game.correct(player2)
else 
  game.incorrect(player2)
end
ui.show_lives(player1, player2)
puts ui.game_over


