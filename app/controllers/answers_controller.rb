class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new
    if @answer.save
      redirect_to answers_path
    else
      render :new
    end
  end

  def show
    answer_id = params[:id]
    @answer = Answer.find(answer_id)
  end

  def edit
    @answer = Answers.find(params[:id])
  end

  def update
    @answer = Answers.find(params[:id])

    if @answer.update_attributes(params[:answer])
      redirect_to @answer
    else
      render :edit
    end
  end

  def destroy
    Answer.find(params[:id]).delete
    redirect_to answers_path
  end


end