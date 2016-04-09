# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  user_1     :integer
#  user_2     :integer
#  user_3     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
end
