class GeoapifyFacade
  def get_coordinates(searched_for_country)
    service = GeoapifyService.new
    response = service.get_coordinates_from_query(searched_for_country)
    # coordinates = {
    #   latitude: response[:results][0][:lat],
    #   longitude: response[:results][0][:lon]
    # }
    # binding.pry
    sites = service.get_tourist_sites_from_coordinates(response[:results][0][:lat], response[:results][0][:lon])

  end
end