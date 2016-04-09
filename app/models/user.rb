# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#  gcm_id     :text
#

class User < ActiveRecord::Base
  has_many :taps

  def browser_push
    gcm = GCM.new("AIzaSyBe6RSXBWWsuGNWSOkO_j4ULUNzXv8BfK4")
    registration_id = [self.gcm_id]
    response = gcm.send(registration_id)
  end

  def amount_donated
    taps.count * 5
  end

  def friends
    User.where('id in (?)', Friendship.where(user_id: self.id).pluck(:friend_id))
  end

  def have_me_as_friend
    user_ids = Friendship.where(friend_id: self.id).pluck(:user_id)
    User.where('id in (?)', user_ids)
  end

  def pin_map
    map = {"1"=>0,"2"=>0,"3"=>0}
    friendships = Friendship.where(user_id: self.id)
    friendships.each do |f|
      map[f.friend_number.to_s]=User.find(f.friend_id).has_recent_donation ? 1 : 0
    end
    map["3"]=self.has_recent_donation ? 1 : 0
    return map
  end

  def has_recent_donation
    if self.taps.length > 0
      return self.taps.order('created_at desc').first.created_at > Time.now-10.minutes
    else
      false
    end
  end

  def score
  end

end
