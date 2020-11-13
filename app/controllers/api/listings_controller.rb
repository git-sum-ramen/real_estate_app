class Api::ListingsController < ApplicationController
  def create
    results = Geocoder.search(params[:address])
    the_latitude = results.first.coordinates[0]
    the_longitude = results.first.coordinates[1]
    p the_latitude

    @listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      price:  params[:price],
      latitude: the_latitude,
      longitude: the_longitude,
    )
    @listing.save
    render 'show.json.jb'
  end
end
