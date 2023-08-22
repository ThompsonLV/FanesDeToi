class BookingsController < ApplicationController
  def new
      @fanes = Fanes.find(params[:fane_id])
      @lessor = booking.user
  end

  def create
  end
end
