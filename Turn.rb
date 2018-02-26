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
      puts "#{@current.name}: Correct!"
      return true
    else
      puts "#{@current.name}: Seriously? No!"
      return false
    end

  end
end
