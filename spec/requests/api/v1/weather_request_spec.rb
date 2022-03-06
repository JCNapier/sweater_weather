require 'rails_helper'

RSpec.describe 'weather API requests' do
  it 'returns a forecast' do 
    get '/api/v1/forecast?location=denver,Co'
    
    expect(response.status).to eq(200)

    forecast_json = JSON.parse(response.body, symbolize_names: true)
    forecast = forecast_json[:data]
    
    expect(forecast).to have_key(:data)
  end
end