json.extract! treatment_plan, :id, :annual_cost, :monthly_cost, :cost_per_visit, :treatment_count, :visit_count, :cost_per_treatment, :square_feet, :type_of_grass, :created_at, :updated_at
json.url treatment_plan_url(treatment_plan, format: :json)
