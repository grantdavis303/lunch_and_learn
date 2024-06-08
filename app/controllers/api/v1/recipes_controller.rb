class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country].empty?
      puts 'The query was empty'
      rest_countries_facade = RestCountriesFacade.new
      all_countries_list = rest_countries_facade.get_list_of_all_countries # 250 length
      searched_for_country = all_countries_list.sample
    else
      puts 'The query was not empty'
      searched_for_country = params[:country]
    end

    puts searched_for_country

    # Hit the Edamam Recipe API to search for recipes using the searched_for_country
  end
end