class MatchesController < ApplicationController
  def index

  end

  def quiz
    @user = User.find(params[:id])
    @question = Question.where("user_id" => @user.id).sample
    @answers = @question.answers
  end

  def grade

    #@receiver_id = Question.find(params[:question_id]).user_id
    #@sender_id = @auth[:id]

    correct = Answer.where(:question_id => params[:question_id], :is_correct => "on").first.answer_text
    select = params[:select]

    if select == correct
      mt = Match.create(:matched => true, :receiver_id => params[:receiver_id], :sender_id => params[:sender_id])

      redirect_to new_message_path(params[:receiver_id])
    else

      mf = Match.create(:receiver_id => params[:receiver_id], :sender_id => params[:sender_id], :matched => false)

      redirect_to matches_failure_path
    end
  end

  def failure
  end

  def show
  end

end