class BookingsController < ApplicationController
  def new
    @fane = Fane.find(params[:fane_id])
    @user = User.find(params[:user_id])
    @owner = Booking.fane.user
    @lessor = Booking.user
    @booking = Booking.new(booking_params)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
