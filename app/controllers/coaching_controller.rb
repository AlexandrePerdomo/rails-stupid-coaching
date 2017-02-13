class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @reponse = coach_answer_enhanced(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  return "" if your_message == "I am going to work right now!"
  return "Silly question, get dressed and go to work!" if your_message.include? "?"
  return "I don't care, get dressed and go to work!"
end

def coach_answer_enhanced(your_message)
  if your_message.upcase != your_message
    return "" if your_message == "I am going to work right now!"
    return "Silly question, get dressed and go to work!" if your_message.include? "?"
    return "I don't care, get dressed and go to work!"
  else
    return "" if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return "I can feel your motivation! Silly question, get dressed and go to work!" if your_message.include? "?"
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  end
end

end
