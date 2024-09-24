class AddingCostPerSquareFootToProduct < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :cost_per_square_foot, :float
  end
end
