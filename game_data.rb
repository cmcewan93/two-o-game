require_relative 'player'
class Game_data
  attr_accessor :question, :answer, :player_answer

  def createQuestion()
    nums = []
    nums[0] = rand(1..20)
    nums[1] = rand(1..20)

    @question = "What does #{nums[0]} plus #{nums[1]} equal?"
    @answer = nums[0] + nums[1]
  end
  
  def evaluate_answer()
    if @answer == @player_answer
      return true
    else return false
    end
  end

  def correct(player)
    puts "YES!!!! That is correct Player #{player.id} "
  end

  def incorrect(player)
    puts "Umm are you serious? That's wrong Player #{player.id}"
    player.decrease_lives();
  end

  def get_answer()
    player_answer = gets.chomp
    @player_answer = player_answer.to_i
  end
end

# t = Game_data.new()
# t.createQuestion()
# puts t.question()
# t.get_answer()
# puts t.evaluate_answer()
