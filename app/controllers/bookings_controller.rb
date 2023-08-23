class BookingsController < ApplicationController


  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    # @user = User.find(params[:user_id])
    # @owner = Booking.fane.user
    # @lessor = Booking.user
  end

  def create
    @fane = Fane.find(params[:fane_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.fane = Fane.find(params[:fane_id])
    @booking.save!
    redirect_to fane_my_bookings_path(@fane)
  end

  def edit
    @booking = Booking.find(params[:id])
    @fane = @booking.fane
  end

  def update
    @fane = Fane.find(params[:fane_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to fane_my_bookings_path(@fane)
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
