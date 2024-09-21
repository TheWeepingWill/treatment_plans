class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end
  def create 
    @treatment = Treatment.new(treatment_params)

    if @treatment.save
      redirect_to @treatment
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])

    if @treatment.update(treatment_params)
      redirect_to @treatment
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def treatment_params
    params.require(:treatment).permit(:name)
  end
end
