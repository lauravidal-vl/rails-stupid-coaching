class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers= ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:question] == "I am going to work" then
      @answers = @answers[0]
    elsif params[:question].end_with?("?") then
      @answers = @answers[1]
    else
      @answers = @answers[2]
  end
end
end
