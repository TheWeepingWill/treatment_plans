class TreatmentProduct < ApplicationRecord
  belongs_to :product
  belongs_to :treatment
end
