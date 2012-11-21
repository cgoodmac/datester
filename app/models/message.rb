# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  sender     :integer
#  recipient  :integer
#  subject    :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :sender, :recipient, :subject, :content

  has_many :users
end
