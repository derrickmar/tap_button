class AddAvatarToTaps < ActiveRecord::Migration
  def change
    add_column :taps, :avatar, :string
  end
end
