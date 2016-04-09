# == Schema Information
#
# Table name: friendships
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  friend_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  friend_number :integer
#

class Friendship < ActiveRecord::Base
end
