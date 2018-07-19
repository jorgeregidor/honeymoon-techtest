class Api::DestinationsController < ApplicationController
  
	before_action :get_destination, only:[:show]

  # GET /api/destinations
  # GET /api/destinations/json
  def index
    @destinations = Destination.all
    render json: @destinations.map(&:to_h)
  end

  def show
  	render json: @destination
  end

  private 

  def get_destination
  	@destination = Destination.find(params[:id])
  end

end
