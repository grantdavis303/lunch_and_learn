require 'rails_helper'

RSpec.describe 'Users Requests' do
  it 'successfully creates a new user' do
    post '/api/v1/users', params: 
    {
        "name": "Odell",
        "email": "goodboy@ruffruff.com",
        "password": "treats4lyf",
        "password_confirmation": "treats4lyf"
    }

    expect(response).to be_successful
    expect(response.status).to eq (201)

    parsed_json = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_json).to be_a (Hash)
    expect(parsed_json).to have_key (:data)

    expect(parsed_json[:data]).to be_a (Hash)
    expect(parsed_json[:data]).to have_key (:type)
    expect(parsed_json[:data]).to have_key (:id)
    expect(parsed_json[:data]).to have_key (:attributes)

    expect(parsed_json[:data][:attributes]).to be_a (Hash)
    expect(parsed_json[:data][:attributes]).to have_key (:name)
    expect(parsed_json[:data][:attributes]).to have_key (:email)
    expect(parsed_json[:data][:attributes]).to have_key (:api_key)

    expect(parsed_json[:data][:attributes][:name]).to be_a (String)
    expect(parsed_json[:data][:attributes][:email]).to be_a (String)
    expect(parsed_json[:data][:attributes][:api_key]).to be_a (String)
  end

  it 'does not create a new user if the password and password confirmation do not match' do
    post '/api/v1/users', params: 
    {
        "name": "Odell",
        "email": "goodboy@ruffruff.com",
        "password": "treats4lyf",
        "password_confirmation": "treatsfourlife"
    }

    expect(response).to_not be_successful
    expect(response.status).to eq (400)

    parsed_json = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_json).to be_a (Hash)
    expect(parsed_json).to have_key (:error)
    expect(parsed_json[:error]).to be_a (String)
    expect(parsed_json[:error]).to eq ('Passwords do not match')
  end

  it 'does not create a new user if the email has already been taken' do
    user = User.create!(
      name: "Grant", 
      email: "goodboy@ruffruff.com", 
      password: "treats4lyf", 
      password_confirmation: "treats4lyf", 
      api_key: "1234567890asdfghjkl"
    )
    
    post '/api/v1/users', params: 
    {
        "name": "Odell",
        "email": "goodboy@ruffruff.com",
        "password": "treats4lyf",
        "password_confirmation": "treats4lyf"
    }

    expect(response).to_not be_successful
    expect(response.status).to eq (400)

    parsed_json = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_json).to be_a (Hash)
    expect(parsed_json).to have_key (:error)
    expect(parsed_json[:error]).to be_a (String)
    expect(parsed_json[:error]).to eq ('Email has already been taken')
  end
end