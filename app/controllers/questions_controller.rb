class QuestionsController < ApplicationController
   def ask
   end

   def answer
    @input = params[:question]
    @answer = stupid_coach(@input)
   end

   private

   def stupid_coach(question)
    if question == "I am going to work"
      return "Great!"
    elsif question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
   end
end
