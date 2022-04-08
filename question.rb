class Question 
    
  attr_reader :question
    
  def initialize()
    @int_one = rand(1..20)
    @int_two = rand(1..20)
    @question = "What does #{@int_one} plus #{@int_two} equal?"
  end

  def is_correct_answer?(input)
    input == (@int_one + @int_two) ? true : false
  end

end
