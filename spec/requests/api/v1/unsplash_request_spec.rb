require 'rails_helper'

RSpec.describe 'unplash API requests' do
  it 'returns a photo of a desired location' do 
    get '/api/v1/backgrounds?location=denver,co'

    expect(response.status).to eq(200)
  end
end