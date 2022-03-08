require 'rails_helper'

RSpec.describe 'road trip request spec' do
  it 'returns a road trip with weather conditions', :vcr do 
    VCR.eject_cassette
    VCR.turn_off!
    road_trip_params = {
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
    
    post '/api/v1/road_trip', params: road_trip_params

    trip_json = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end
end