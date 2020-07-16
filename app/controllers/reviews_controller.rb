class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @garden = Garden.find(params[:garden_id])
    if @review.save
      redirect_to review_path(@review)
    else
      render "new"
    end
  end

  
end
