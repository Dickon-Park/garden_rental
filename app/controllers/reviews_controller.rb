class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @review = Review.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to  garden_path(@garden)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:description)
  end

end
