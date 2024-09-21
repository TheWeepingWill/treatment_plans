class ChangeTreatmentNameToName < ActiveRecord::Migration[7.2]
  def change
    rename_column :treatments, :treatment_name, :name
  end
end
