class FanesController < ApplicationController
  before_action :set_user, only: %i[new create edit update my_fanes]
  before_action :set_fane, only: %i[show edit update destroy]

  def index
    @fanes = Fane.all
  end

  def my_fanes
    @fanes = Fane.where(user_id: @user.id)
    @fane = Fane.new
  end

  def new
    @fane = Fane.new
  end

  def create
    @fane = Fane.new(fane_params)
    @fane.user = @user
    if @fane.save
      redirect_to user_fanes_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @fane.update(fane_params)
    redirect_to user_fane_path(@user)
  end

  def destroy
    @fane.delete
    redirect_to user_fanes_path(@fane.user), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_fane
    @fane = Fane.find(params[:id])
  end

  def fane_params
    params.require(:fane).permit(:photos, :title, :brand, :start_date, :end_date)
  end
end
