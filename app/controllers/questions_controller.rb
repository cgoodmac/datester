class QuestionsController < ApplicationController
  #before_filter :ensure_logged_in
  def index
    @questions = Question.where(:user_id => @auth) # only shows user questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    q = Question.create(params[:question])
    @auth.questions << q

    answers = params[:answers].map do |answer_hash|
      Answer.create(answer_hash)
    end

    q.answers = answers

    redirect_to questions_path
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      redirect_to @question
    else
      render :edit 
    end

  end

  def destroy
  end
  # private
  # def ensure_logged_in
  #   redirect_to root_path if @auth.nil
  # end
end
