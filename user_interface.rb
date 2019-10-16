require_relative "player"

class User_interface
  attr_reader :new_turn, :game_over
  
  def initialize()
    @new_turn = '----- NEW TURN -----'
    @game_over = '----- GAME OVER -----'
  end

  def question(player, question)
    puts "Player #{player.id}: #{question}"
  end

  def show_lives(player1, player2)
    puts "P#{player1.id}: #{player1.lives}/3 vs P#{player2.id}: #{player2.lives}/3"
  end
end

# t = User_interface.new()
# p = Player.new('1')
# t.correct(p)
# t.incorrect(p)