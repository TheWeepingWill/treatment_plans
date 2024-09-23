class CreateTreatmentProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :treatment_products do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
