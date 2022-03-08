require 'rails_helper'

RSpec.describe RoadtripFacade do
  it 'returns directions', :vcr do 
    trip_params = {to: "Los Angeles, CA", from: "New York, NY"}

    response = RoadtripFacade.trip_info(trip_params)

    expect(response.id).to eq(nil)
    expect(response.start_city).to eq("New York, NY")
    expect(response.end_city).to eq("Los Angeles, CA")
    expect(response.travel_time).to eq("40 Hour(s), 16 Minutes")
    expect(response.weather_at_eta[:temperature]).to eq(55.22)
    expect(response.weather_at_eta[:conditions]).to eq("scattered clouds")
  end
end