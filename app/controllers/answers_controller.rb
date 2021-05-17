class AnswersController < ApplicationController
  def question
    @question = params[:question]
    if @question.downcase == 'i am going to work!'
      @answer = 'Great!'
    elsif @question == 'what time is it?'
      @answer = Time.now
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
