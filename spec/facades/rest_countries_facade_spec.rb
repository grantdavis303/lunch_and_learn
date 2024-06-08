require 'rails_helper'

RSpec.describe RestCountriesFacade do
  it 'exists' do
    facade = RestCountriesFacade.new
    expect(facade).to be_a (RestCountriesFacade)
  end

  it '#get_list_of_all_countries' do
    facade = RestCountriesFacade.new
    json_response = File.read('spec/fixtures/all_countries.json')
    stub_request(:get, "https://restcountries.com/v3.1/all").to_return(status: 200, body: json_response)
    expect(facade.get_list_of_all_countries).to be_a (Array)
    expect(facade.get_list_of_all_countries[0]).to be_a (String)
    expect(facade.get_list_of_all_countries[0]).to eq ('Angola')
    expect(facade.get_list_of_all_countries[1]).to be_a (String)
    expect(facade.get_list_of_all_countries[1]).to eq ('Kiribati')
    expect(facade.get_list_of_all_countries[2]).to be_a (String)
    expect(facade.get_list_of_all_countries[2]).to eq ('Guernsey')
    expect(facade.get_list_of_all_countries[3]).to be_a (String)
    expect(facade.get_list_of_all_countries[3]).to eq ('Guadeloupe')
    expect(facade.get_list_of_all_countries.length).to eq (250)
  end
end