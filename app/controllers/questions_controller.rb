class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:ask_type]
    @answer = coach_answer
  end

  def coach_answer
    if @question.include?('?')
      'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      'Great!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
