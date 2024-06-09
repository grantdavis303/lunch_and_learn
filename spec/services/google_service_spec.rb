require 'rails_helper'

RSpec.describe GoogleService do
  it 'exists' do
    service = GoogleService.new
    expect(service).to be_a (GoogleService)
  end

  it '#get_video_from_query(args)' do
    service = GoogleService.new
    json_response = File.read('spec/fixtures/youtube_videos.json')
    stub_request(:get, "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos&key=#{Rails.application.credentials.google[:key]}").to_return(status: 200, body: json_response)
    expect(service.get_video_from_query('laos')).to be_a (Hash)
    expect(service.get_video_from_query('laos')[:items]).to be_a (Array)
    expect(service.get_video_from_query('laos')[:items][0][:id][:videoId]).to eq ('uw8hjVqxMXw')
    expect(service.get_video_from_query('laos')[:items][0][:snippet][:title]).to eq ('A Super Quick History of Laos')
  end

  it '#get_url(args)' do
    service = GoogleService.new
    json_response = File.read('spec/fixtures/youtube_videos.json')
    stub_request(:get, "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos&key=#{Rails.application.credentials.google[:key]}").to_return(status: 200, body: json_response)
    expect(service.get_url('/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos'))
    expect(service.get_url('/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos')).to be_a (Hash)
    expect(service.get_url('/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos')[:items]).to be_a (Array)
    expect(service.get_url('/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos')[:items][0][:id][:videoId]).to eq ('uw8hjVqxMXw')
    expect(service.get_url('/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&q=laos')[:items][0][:snippet][:title]).to eq ('A Super Quick History of Laos')
  end

  it '#api_connection' do
    service = GoogleService.new
    expect(service.api_connection).to be_a (Faraday::Connection)
    expect(service.api_connection.params[:part]).to eq ('snippet')
    expect(service.api_connection.params[:channelId]).to eq ('UCluQ5yInbeAkkeCndNnUhpw')
    expect(service.api_connection.params[:key]).to eq Rails.application.credentials.google[:key]
  end
end