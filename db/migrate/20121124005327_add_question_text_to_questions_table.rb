class AddQuestionTextToQuestionsTable < ActiveRecord::Migration
  def change
    add_column :questions, :question_text, :string
  end
end
