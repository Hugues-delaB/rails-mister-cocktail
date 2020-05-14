class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @coctail = Cocktail.find(params[:cocktail_id])
  end

  def create
    raise
    @dose = dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @cocktail.save
    redirect_to cocktails_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
