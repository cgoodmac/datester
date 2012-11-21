j# == Schema Information
#
# Table name: matches
#
#  id          :integer          not null, primary key
#  matched     :boolean
#  receiver_id :integer
#  sender_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Match < ActiveRecord::Base
    belongs_to :user, :foreign_key => 'receiver_id'
    validates :matched, :presence => true
    validates :receiver_id, :presence => true
    validates :sender_id, :presence => true
end
