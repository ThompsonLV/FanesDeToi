class FanesController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :set_fane, only: %i[show edit update destroy]

  def index
    @fanes = Fane.where.not(user_id: current_user.id)
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
