class Api::ListingsController < ApplicationController
  def create
    @listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      price:  params[:price],
      latitude: params[:latitude],
      longitude: params[:longitude],
    )
    @listing.save
    render 'show.json.jb'
  end
end
