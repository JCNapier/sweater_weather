require 'rails_helper'

RSpec.describe 'sessions creation' do
  it 'successfully creates a session' do 
    user_data = {
      "email": "bass@gmail.com",
      "password": "password123",
      "password_confirmation": "password123"
    }

    User.create!(user_data)

    user_login = {
      "email": "bass@gmail.com",
      "password": "password123"
    }

    post '/api/v1/sessions', params: user_login

    user_json = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful
    expect(user_json).to be_a(Hash)
    expect(user_json[:data][:id]).to be_a(String)
    expect(user_json[:data][:type]).to be_a(String)
    expect(user_json[:data][:attributes]).to be_a(Hash)
    expect(user_json[:data][:attributes][:email]).to be_a(String)
    expect(user_json[:data][:attributes][:api_key]).to be_a(String)
  end
end