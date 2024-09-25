class TreatmentPlan < ApplicationRecord
  has_many :treatment_plan_treatments
  has_many :treatments, through: :treatment_plan_treatments

  def annual_cost
    self[:annual_cost] = 0
    Treatment.all.each do |treatment|
      self[:annual_cost] += treatment.price_per_square_foot*square_feet
    end
    self[:annual_cost].round(4)
  end

  def square_feet
    self[:square_feet]
  end

  def monthly_cost 
    (annual_cost/12).round(4)
  end

  def treatment_count
    Treatment.all.count
  end

  def cost_per_treatment
    (annual_cost/treatment_count).round(2)
  end

  def visits_count
    self[:visit_count] = 10
    self[:visit_count]
  end

  def cost_per_visit 
    self[:cost_per_visit] = annual_cost/visits_count
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




