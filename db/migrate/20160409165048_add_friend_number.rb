class AddFriendNumber < ActiveRecord::Migration
  def change
  	add_column :friendships, :friend_number, :integer
  end
end
