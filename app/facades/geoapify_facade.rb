class GeoapifyFacade
  def get_coordinates(searched_for_country)
    service = GeoapifyService.new
    response = service.get_coordinates_from_query(searched_for_country)
    sites = service.get_tourist_sites_from_coordinates(response[:results][0][:lat], response[:results][0][:lon])
    top_10_results = sites[:features][0...10]

    # Possibly refactor thisinto its own method
    all_tourist_sites = top_10_results.map do |result|
      TouristSite.new({
        name: result[:properties][:name],
        address: result[:properties][:formatted],
        place_id: result[:properties][:place_id]
      })
    end
  end
end