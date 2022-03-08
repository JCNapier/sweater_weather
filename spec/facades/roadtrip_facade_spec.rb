require 'rails_helper'

RSpec.describe RoadtripFacade do
  it 'returns directions', :vcr do 
    trip_params = {to: "Fort Collins, CO", from: "Estes Park, CO"}

    response = RoadtripFacade.trip_info(trip_params)

    expect(response.destination).to eq("Fort Collins, CO")
    expect(response.departure).to eq("Estes Park, CO")
  end
end