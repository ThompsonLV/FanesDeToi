class FanesController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :set_fane, only: %i[show edit update destroy]

  def index
    if user_signed_in?
      @fanes = Fane.where.not(user_id: current_user.id)
    else
      @fanes = Fane.all
    end
    @markers = @fanes.geocoded.map do |fane|
      {
        lat: fane.latitude,
        lng: fane.longitude,
        info_window: render_to_string(partial: "info_window", locals: {fane: fane})
      }
    end
  end

  def my_fanes
    @fanes = Fane.where(user_id: current_user.id)
    @fane = Fane.new
  end

  def new
    @fane = Fane.new
  end

  def create
    @fane = Fane.new(fane_params)
    @fane.user = current_user
    # @user.fane = Fane.find(params[:fane_id])
    if @fane.save!
      redirect_to my_fanes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    @fane.update(fane_params)
    redirect_to user_fane_path(@user)
  end

  def destroy
    @fane.delete
    redirect_to my_fanes_path, status: :see_other
  end

  def article_params
    params.require(:article).permit(:title, :body, photos: [])
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_fane
    @fane = Fane.find(params[:id])
  end

  def fane_params
    params.require(:fane).permit(:photos, :title, :brand, :start_date, :end_date, photos: [])
  end
end
