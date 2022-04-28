class TouringsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @tourings = Touring.order("created_at DESC")
  end

  def new
    @touring = Touring.new
  end

  def create
    @touring = Touring.new(touring_params)
      if @touring.save
        redirect_to tourings_path
      else
        render "new"
      end
  end

  def show
    @touring = Touring.find(params[:id])
  end

  private

  def touring_params
    params.require(:touring).permit(
      :image, :title, :weather_id, :mileage, :recording
    ).merge(user_id: current_user.id)
  end
end
