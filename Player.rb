class Player
  attr_reader :name
  attr_accessor :life
  def initialize(name)
    @name = name
    @life = 3
  end

  def lose_life
    @life - 1
  end

end
