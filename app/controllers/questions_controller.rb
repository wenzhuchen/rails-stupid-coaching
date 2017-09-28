class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:query]
    if @answer.downcase.capitalize == "I am going to work right now!"
        @coach_answer = ""
      elsif @answer.include? "?"
        @coach_answer = "Silly question, get dressed and go to work!"
      else
        @coach_answer= "I don't care, get dressed and go to work!"
    end
  end

end
