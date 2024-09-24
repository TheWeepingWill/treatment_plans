class CreateTreatmentPlans < ActiveRecord::Migration[7.2]
  def change
    create_table :treatment_plans do |t|
      t.float :annual_cost
      t.float :monthly_cost
      t.float :cost_per_visit
      t.integer :treatment_count
      t.integer :visit_count
      t.float :cost_per_treatment
      t.integer :square_feet
      t.string :type_of_grass

      t.timestamps
    end
  end
end
