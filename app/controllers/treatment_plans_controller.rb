class TreatmentPlansController < ApplicationController
  before_action :set_treatment_plan, only: %i[ show edit update destroy ]

  # GET /treatment_plans or /treatment_plans.json
  def index
    @treatment_plans = TreatmentPlan.all
  end

  # GET /treatment_plans/1 or /treatment_plans/1.json
  def show
  end

  # GET /treatment_plans/new
  def new
    @treatment_plan = TreatmentPlan.new
  end

  # GET /treatment_plans/1/edit
  def edit
  end

  # POST /treatment_plans or /treatment_plans.json
  def create
    @treatment_plan = TreatmentPlan.new(treatment_plan_params)
    @treatment_plan.annual_cost

    respond_to do |format|
      if @treatment_plan.save
        format.html { redirect_to @treatment_plan, notice: "Treatment plan was successfully created." }
        format.json { render :show, status: :created, location: @treatment_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treatment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatment_plans/1 or /treatment_plans/1.json
  def update
    respond_to do |format|
      if @treatment_plan.update(treatment_plan_params)
        format.html { redirect_to @treatment_plan, notice: "Treatment plan was successfully updated." }
        format.json { render :show, status: :ok, location: @treatment_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treatment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatment_plans/1 or /treatment_plans/1.json
  def destroy
    @treatment_plan.destroy!

    respond_to do |format|
      format.html { redirect_to treatment_plans_path, status: :see_other, notice: "Treatment plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_plan
      @treatment_plan = TreatmentPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treatment_plan_params
      params.require(:treatment_plan).permit(:annual_cost, :monthly_cost, :cost_per_visit, :treatment_count, :visit_count, :cost_per_treatment, :square_feet, :type_of_grass)
    end
end
