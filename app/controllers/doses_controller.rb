class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end
  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
