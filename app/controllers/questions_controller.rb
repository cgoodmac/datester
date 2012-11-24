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

    params[:answers].each do |answer|
      a1 = Answer.create(params[:answer])
      q.answers << a1
    end

    redirect_to questions_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
  # private
  # def ensure_logged_in
  #   redirect_to root_path if @auth.nil
  # end
end
