class Question

  def initialize
    @first_num = rand(20)
    @second_num = rand(20)
    @answer = @first_num + @second_num
  end

  def ask_question
    "What does #{@first_num} plus #{@second_num} equal?"
  end

  def check_answer (input)
    if input.to_i == (@answer)
      true
    else
      false
    end
  end

end