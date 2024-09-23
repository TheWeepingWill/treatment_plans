class Treatment < ApplicationRecord
  has_many :treatment_products
  has_many :products, through: :treatment_products

end
