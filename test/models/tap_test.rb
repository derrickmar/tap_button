# == Schema Information
#
# Table name: taps
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#  score      :float
#

require 'test_helper'

class TapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
