class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_1
      t.integer :user_2
      t.integer :user_3

      t.timestamps null: false
    end
  end
end
