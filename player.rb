class Player
  attr_accessor :lives, :id

  def initialize(id)
    @id = id
    @lives = 3
  end

  def decrease_lives()
    @lives = @lives - 1
  end
end