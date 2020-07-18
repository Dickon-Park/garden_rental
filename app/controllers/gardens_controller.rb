class GardensController < ApplicationController
    before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.save

    # no need for app/views/gardens/create.html.erb
    redirect_to garden_path(@garden)
  end

  def edit
  end

  def update
    @garden.update(garden_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden = garden.find(params[:id])
    @garden.destroy

    redirect_to gardens_path(@garden)
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :description).merge(user: current_user)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
