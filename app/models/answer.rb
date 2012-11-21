# == Schema Information
#
# Table name: answers
#
#  id           :integer          not null, primary key
#  answer_true  :boolean
#  answer_false :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  question_id  :integer
#

class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
end
