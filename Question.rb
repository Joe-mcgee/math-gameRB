class Question

  def initialize(player)
    @current = player
  end

  def answer_gen(number_1, operator, number_2)
    case operator
    when '+'
      answer = number_1 + number_2
    when '-'
      answer = number_1 - number_2
    when '*'
      answer = number_1 * number_2
    when '/'
      answer = number_1 / number_2
    when '%'
      answer = number_1 % number_2
    end
  return answer
  end

  def create
    number_1 = Random.new.rand(0...20)
    number_2 = Random.new.rand(1...20)
    operator = ['+', '-', '*', '/', '%'].sample
    puts "#{@player} #{number_1} #{operator} #{number_2} = ?"
    answer = answer_gen(number_1, operator, number_2)
    response = gets.chomp.to_i
    puts answer
    if response == answer
      return true
    else
      return false
    end
  end

end
