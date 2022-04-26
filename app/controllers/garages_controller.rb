class GaragesController < ApplicationController
  before_action :authenticate_user!
  def index
    @tourings = Touring.order("created_at DESC")
    @touring = Touring.find(params[:touring_id])
  end

end
