class Api::DestinationsController < ApplicationController
  # GET /api/destinations
  # GET /api/destinations/json
  def index
    @destinations = Destination.all
    render json: @destinations.map(&:to_h)
  end
end
