class FanesController < ApplicationController
  before_action :set_user, only: %i[new create]

  def home
    @fanes = Fane.all
  end

  def index
    @fanes = Fane.where(user_id: @user.id)
  end

  def new
    @fane = Fane.new
  end

  def create
    @fane = Fane.new(fane_params)
    @fane.user = @user
    @fane.save
    redirect_to user_fanes_path(@user)
  end

  # def show
  #   @fane = Fane.find(params[:id])
  # end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def fane_params
    params.require(:fane).permit(:title, :brand, :start_date, :end_date)
  end

end
