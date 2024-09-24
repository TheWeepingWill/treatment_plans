class TreatmentPlanTreatments < ActiveRecord::Migration[7.2]
  def change
    create_table :treatment_plan_treatments do |t|
      t.belongs_to :treatment_plan, null: false, foreign_key: true
      t.belongs_to :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
