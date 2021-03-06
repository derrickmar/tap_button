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
    taps.count * 500
  end

  def total_happiness
    total = 0
    taps.each do |tap|
      total += tap.score unless tap.score.nil?
    end
    return total.round * 100
  end

  def bonus
    if taps.last.score
      (taps.last.score * 200).round
    else
      0
    end
  end

  def pin_map
    map = {"1"=>0,"2"=>0,"3"=>0}
    group = Group.where('user_1 = ? OR user_2 = ? OR user_3 = ?', self.id, self.id, self.id).first
    map["1"] = User.find(group.user_1).has_recent_donation ? 1 : 0
    map["2"] = User.find(group.user_2).has_recent_donation ? 1 : 0
    map["3"] = User.find(group.user_3).has_recent_donation ? 1 : 0
    return map
  end

  def has_recent_donation
    if self.taps.length > 0
      return self.taps.order('created_at desc').first.created_at > Time.now-1.minute
    else
      false
    end
  end

  def score
    amount_donated + total_happiness
  end

end
