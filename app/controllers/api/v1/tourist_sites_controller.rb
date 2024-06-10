class Api::V1::TouristSitesController < ApplicationController
  def index
    #binding.pry
    #country_searched_for = params[:country]

    # Get the lat and lon for the country searched for
    geoapify_facade = GeoapifyFacade.new
    results = geoapify_facade.get_coordinates(params[:country])
  end
end