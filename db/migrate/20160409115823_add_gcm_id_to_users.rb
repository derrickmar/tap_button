class AddGcmIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gcm_id, :text
  end
end
