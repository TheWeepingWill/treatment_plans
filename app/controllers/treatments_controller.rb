class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
    @products = Product.all
  end
  def create 
    @treatment = Treatment.new(treatment_params)
    @treatment.products.push(Product.find(treatment_params[:product_id]))
    @treatment.price_per_square_foot

    if @treatment.save
      redirect_to @treatment
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @treatment = Treatment.find(params[:id])
    @products = Product.all
  end

  def update
    @treatment = Treatment.find(params[:id])
    @treatment.products.push(Product.find(treatment_params[:product_id]))
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
    params.require(:treatment).permit(:name, :product_id)
  end
end
