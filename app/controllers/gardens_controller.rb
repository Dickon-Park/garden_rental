class GardensController < ApplicationController
    before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = Garden.geocoded

    @markers = @gardens.map do |garden| 
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infowindow: render_to_string(partial: "info_window", locals: { garden: garden })
      }
    end
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      redirect_to garden_path(@garden), notice: 'Garden was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @garden.update(garden_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden.destroy

    redirect_to gardens_path(@garden)
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :description, :address).merge(user: current_user)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
