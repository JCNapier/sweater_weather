require 'rails_helper'

RSpec.describe 'weather API requests' do
  it 'returns a forecast' do 
    get '/api/v1/forecast?location=denver,co'

    expect(response).to eq(200)

    forecast = JSON.parse(response.body, symbolize_names: true)

    expect(forecast).to have_key(:data)
  end
end