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

  def total_happiness
    total = 0
    taps.each do |tap|
      total += tap.score unless tap.score.nil?
    end
    return total.round
  end

  def score
    amount_donated + total_happiness
  end

end
