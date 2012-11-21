# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  photo_id        :integer
#  age             :integer
#  gender          :string(255)
#  city            :string(255)
#  state           :string(255)
#  ethnicity       :string(255)
#  description     :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :photos
  has_many :questions
  has_many :messages
  has_many :intiated, :class_name => 'Match', :foreign_key => 'sender_id'
  has_many :received, :class_name => 'Match', :foreign_key => 'receiver_id'


  validates :username, :presence => true
  # validates :photo_id, :presence => true

  # validates :age, :presence => true
  # validates :gender, :presence => true
  # validates :city, :presence => true
  # validates :state, :presence => true
  # validates :ethnicity, :presence => true
  # validates :description, :presence => true


  
end
