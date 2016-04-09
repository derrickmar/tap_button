# == Schema Information
#
# Table name: taps
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#

class Tap < ActiveRecord::Base
   mount_uploader :avatar, AvatarUploader
   belongs_to :user
end
