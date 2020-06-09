class PlanetsController < ApplicationController
  before_action :find_planet , only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @planets = Planet.all
  end

  def show
    @bookings = Booking.where(planet_id: params[:id])
  end

  def new
    @planet = Planet.new
  end
#TODO verifie create is working 
  def create
    @planet = Planet.new(planet_params)
    @planet.owner = current_user
    #@planet.owner = User.find(1)
    if @planet.save!
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end
#TODO verifie create is working 
  def edit
  end

  def update
    if @planet.update!(planet_params)
      redirect_to planet_path(@planet), notice: 'This planet was successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    if @planet.destroy
      redirect_to planets_path, notice: 'This planet was successfully deleted!'
    else
      redirect_to planet_path(@planet), notice: "Sorry, we need to reload our destroying machine..."
    end
  end

  private

  def find_planet
    @planet = Planet.find(params[:id])
  end
  def planet_params
    params.require(:planet).permit(:name , :description, :price, :photo)
  end
end
