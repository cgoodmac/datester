class MatchesController < ApplicationController
  def index

  end

  def quiz
    @user = User.find(params[:id])
    @question = Question.where("user_id" => @user.id).sample
    @answers = @question.answers
  end

  def grade

    @receiver_id = Question.find(params[:question_id]).user_id
    @sender_id = @auth[:id]

    correct = Answer.where(:question_id => params[:question_id], :is_correct => "on").first.answer_text
    select = params[:select]

    if select == correct
      @attempt = "success"
      # Match.create(:matched => true, :receiver_id => , :sender_id =>  )
    else
      @attempt = "failure"

      redirect_to dashboard_index_path
    end
  end

end