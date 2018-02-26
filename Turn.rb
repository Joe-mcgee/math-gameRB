class Turn

  def initialize(player)
    @current = player
  end

  def begin
    puts '---NEW TURN---'
  end

  def question
    question = Question.new(@current)
    answer = question.create
    puts answer
    if answer == true
      return true
    else
      return false
    end

  end
end
