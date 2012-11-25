class MatchesController < ApplicationController
  def index

  end

  def quiz
    @user = User.find(params[:id])
    @question = Question.where("user_id" => @user.id).sample
    @answers = @question.answers
  end

  def grade

    correct = Answer.where(:question_id => params[:question_id], :is_correct => "on").first.answer_text
    select = params[:select]
  

      
    if select == correct
      m = Match.create(:matched => true, :receiver_id => params[:receiver_id], :sender_id => params[:sender_id])
      redirect_to new_message_path(params[:receiver_id])
    else
      m = Match.create(:receiver_id => params[:receiver_id], :sender_id => params[:sender_id], :matched => false)
      redirect_to matches_failure_path
    end


  end

  def failure
  end

  def show
  end

end