class AddingProductId < ActiveRecord::Migration[7.2]
  def change
    add_column :treatments, :product_id, :integer
  end
end
