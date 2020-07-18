class IndexController < ApplicationController

  def index
    @gardens = Garden.all
  end

  def create
    garden = Garden.create(garden_params)
    redirect_to garden_path
  end

  def update
    @gardens = Garden.find(params[:id])
    @garden.update(garden_params)

    redirect_to garden_path(@garden)
  end

  def show
    @gardens = Garden.find(params[:id])

  end
end