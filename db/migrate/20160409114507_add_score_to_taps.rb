class AddScoreToTaps < ActiveRecord::Migration
  def change
    add_column :taps, :score, :float
  end
end
