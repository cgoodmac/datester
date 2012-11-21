# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#

class Photo < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader
end
