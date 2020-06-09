class BookingsController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet 
    #@planet.owner = User.find(1)
    if @booking.save!
      redirect_to planet_path(@planet), notice: "Congrats! You have successfully booked this planet!"
    else
      render :new
    end
  end

#  def destroy
#    if @booking.destroy!
#      redirect_to user_path(@booking.user), notice: 'This #booking was successfully deleted!'
#    else
#      redirect_to user_path(@booking.user), notice: "Sorry, #we need to reload our destroying machine..."
#    end
#  end
  private
  def booking_params
    params.require(:booking).permit(:duration, :planet_id)
  end
end
