class TreatmentPlan < ApplicationRecord
  has_many :treatment_plan_treatments
  has_many :treatments, through: :treatment_plan_treatments

 #class BermudaPlan < TreatmentPlan

  #  attr_accessor :type_of_grass


   # def type_of_grass
    #  "Bermuda"
    #end
    

    #class BermudaPremiumPlan < BermudaPlan
    #end


  #end


end




