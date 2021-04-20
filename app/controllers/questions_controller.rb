class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  private

  def coach_answer
    if @question.downcase == 'i am going to work right now!'
      ''
    elsif @question.end_with?('?')
      'Silly question, get dressed ang get to work!'
    else
      "I don't care, get dressed and get to work!"
    end
  end
end
