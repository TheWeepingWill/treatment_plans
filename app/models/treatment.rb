class Treatment < ApplicationRecord
  has_many :treatment_products
  has_many :products, through: :treatment_products
  has_many :treatment_plan_treatments
  has_many :treatment_plans, through: :treatment_plan_treatments

  attr_accessor :margin

  def margin
    @margin = 1.5
  end
end
