class AddingPricePerSquareFootToTreatment < ActiveRecord::Migration[7.2]
  def change
    add_column :treatments, :price_per_square_foot, :float
  end
end
