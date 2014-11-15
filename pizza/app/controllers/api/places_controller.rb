class Api::PlacesController < ApplicationController

  protect_from_forgery with: :null_session

  # curl -H "Content-Type: application/json" -d '{"place": {"name": "Franks" }}' http://localhost:3000/api/places

  def index
    @places = Place.all
    render json: @places
  end

  def create
    @place = Place.new(params.require(:place).permit(:name, :city))
    @place.save
    render json: @place
  end

  def update
    @place = Place.find(params[:id])
    @place.update(params.require(:place).permit(:name, :city))
    render json: @place
  end

end
