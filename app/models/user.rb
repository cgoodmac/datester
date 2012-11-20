class User < ActiveRecord::Base
  has_secure_password

  has_many :photos
  has_many :questions
  has_many :messages
  has_many :matches, :foreign_key => 'sender_id'

  validates :user_name, :presence => true
  validates :password, :presence => true
  validates :photo_id, :presence => true
  validates :age, :presence => true
  validates :gender, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :ethnicity, :presence => true
  validates :description, :presence => true

  
end
