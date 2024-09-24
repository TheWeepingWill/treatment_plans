require "test_helper"

class TreatmentPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treatment_plan = treatment_plans(:one)
  end

  test "should get index" do
    get treatment_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_treatment_plan_url
    assert_response :success
  end

  test "should create treatment_plan" do
    assert_difference("TreatmentPlan.count") do
      post treatment_plans_url, params: { treatment_plan: { annual_cost: @treatment_plan.annual_cost, cost_per_treatment: @treatment_plan.cost_per_treatment, cost_per_visit: @treatment_plan.cost_per_visit, monthly_cost: @treatment_plan.monthly_cost, square_feet: @treatment_plan.square_feet, treatment_count: @treatment_plan.treatment_count, type_of_grass: @treatment_plan.type_of_grass, visit_count: @treatment_plan.visit_count } }
    end

    assert_redirected_to treatment_plan_url(TreatmentPlan.last)
  end

  test "should show treatment_plan" do
    get treatment_plan_url(@treatment_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_treatment_plan_url(@treatment_plan)
    assert_response :success
  end

  test "should update treatment_plan" do
    patch treatment_plan_url(@treatment_plan), params: { treatment_plan: { annual_cost: @treatment_plan.annual_cost, cost_per_treatment: @treatment_plan.cost_per_treatment, cost_per_visit: @treatment_plan.cost_per_visit, monthly_cost: @treatment_plan.monthly_cost, square_feet: @treatment_plan.square_feet, treatment_count: @treatment_plan.treatment_count, type_of_grass: @treatment_plan.type_of_grass, visit_count: @treatment_plan.visit_count } }
    assert_redirected_to treatment_plan_url(@treatment_plan)
  end

  test "should destroy treatment_plan" do
    assert_difference("TreatmentPlan.count", -1) do
      delete treatment_plan_url(@treatment_plan)
    end

    assert_redirected_to treatment_plans_url
  end
end
