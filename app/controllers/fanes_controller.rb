class FanesController < ApplicationController

  def index
    @fanes = Fane.all
  end
  # def show
  #   @fane = Fane.find(params[:id])
  # end

  # def new
  #   @fane = Fane.new
  # end
end
