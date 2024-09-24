class TreatmentPlan < ApplicationRecord
  has_many :treatment_plan_treatments
  has_many :treatments, through: :treatment_plan_treatments

  def treatments
    each Treatment.all do |treatment|
      self.treatments.push[treatment]
    end
  end

  def annual_cost
    self[:annual_cost]
  end

  def square_feet
    self[:square_feet]
  end



 #class BermudaPlan < TreatmentPlan

  #  attr_accessor :type_of_grass


   # def type_of_grass
    #  "Bermuda"
    #end
    

    #class BermudaPremiumPlan < TreatmentPlan

    #end


  #end


end




