class QuestionsController < ApplicationController
  def create
    question = Question.create(
      body: params[:question][:body],
      user_id: params[:question][:user_id]
    )

    redirect_to question_path(question)
  end

  def update
    @question = Question.find(params[:id])
    @question = Question.update(
      body: params[:question][:body],
      user_id: params[:question][:user_id]
    )
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new 
  end
end
