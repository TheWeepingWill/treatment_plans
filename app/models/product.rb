class Product < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :square_feet, presence: true
  validates :group, presence: true
  has_many :treatment_products
  has_many :treatments, through: :treatment_products

  attr_accessor :cost_per_square_foot

  def cost_per_square_foot
    self[:cost_per_square_foot] = (self.cost/self.square_feet).round(4)
  end
end
