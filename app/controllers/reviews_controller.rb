class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save ? (redirect_to cocktail_path(@cocktail)) : (render 'new')
  end

  def edit
  end

  def update
    @review.update(review_params)
    @review.save ? (redirect_to cocktail_path(@review.cocktail)) : (render 'edit')
  end

  def destroy
    @review.destroy
    redirect_to cocktail_path(@review.cocktail)
  end

  private

  def set_review
    @review = Review.includes(:cocktail).find(params[:id])
  end



  def review_params
    params.require(:review).permit(:content, :star, :cocktail_id)
  end
end
