class Turn

  def initialize(player)
    @current = player
  end

  def begin
    puts '---NEW TURN---'
  end

  def question
    question = Question.new(@current)
  end
end
