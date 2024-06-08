class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country].empty?
      rest_countries_facade = RestCountriesFacade.new
      all_countries_list = rest_countries_facade.get_list_of_all_countries
      searched_for_country = all_countries_list.sample
    else
      searched_for_country = params[:country]
    end

    edamam_facade = EdamamFacade.new
    all_recipes = edamam_facade.get_recipes(searched_for_country)

    # Is it possible to set the default value of id to null/nil with the JSON API Serializer?
    # render json: RecipeSerializer.new(all_recipes), status: 200
    render json: RecipeSerializer.new.serialized_json(all_recipes), status: 200
  end
end