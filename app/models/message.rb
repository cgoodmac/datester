class Message < ActiveRecord::Base
  attr_accessible :sender, :recipient, :subject, :content

  has_and_belongs_to_many :users
end
