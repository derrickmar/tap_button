class AddDescToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :desc, :text
  end
end
