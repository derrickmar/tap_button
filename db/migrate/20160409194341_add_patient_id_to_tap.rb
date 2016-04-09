class AddPatientIdToTap < ActiveRecord::Migration
  def change
    add_column :taps, :patient_id, :integer
  end
end
