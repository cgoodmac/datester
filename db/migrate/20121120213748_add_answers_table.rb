class AddAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :answer_true
      t.boolean :answer_false
      t.timestamps
    end
  end

end
