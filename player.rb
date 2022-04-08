class Player

  attr_reader :lives, :id

  def initialize(id)
    @id = id
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

  def dead?
    @lives == 0 ? true : false
  end

end