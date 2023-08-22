class FanesController < ApplicationController
  def home
    @fanes = Fane.all
  end

  def index
    @user = User.find(params[:id])
    @fanes = Fane.all
  end 
  # def show
  #   @fane = Fane.find(params[:id])
  # end

  # def new
  #   @fane = Fane.new
  # end
end
