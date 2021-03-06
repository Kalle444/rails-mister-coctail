class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
    @reviews = @cocktail.reviews
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save ? (redirect_to cocktail_path(@cocktail)) : (render :new)
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, photos: [])
  end
end

