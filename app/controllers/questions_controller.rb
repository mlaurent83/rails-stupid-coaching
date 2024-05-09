class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question] # Change to params[:question]
    @answer = compute_answer(question)
  end

  def compute_answer(question)
    if question.nil? || question.empty? # Check for nil or empty question
      "Please provide a question."
    elsif question == "I am going to work"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
