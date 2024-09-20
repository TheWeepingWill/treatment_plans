class Products < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.integer :sqaure_feet
      t.text :group

      t.timestamps
    end
  end
end
