require 'rails_helper'

RSpec.describe 'Creating a User' do
  it 'happy path successfully creates a user', :vcr do 
    user_params = { 
      "email": "johnthefisherman@gmail.com",
      "password": "ToTheMoon",
      "password_confirmation": "ToTheMoon"
    }
   
    post '/api/v1/users',  params: user_params
    
    user_json = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful
    expect(response.status).to eq(201)
    
    expect(user_json).to be_a(Hash)
    expect(user_json[:data][:id]).to be_a(String)
    expect(user_json[:data][:type]).to be_a(String)
    expect(user_json[:data][:attributes]).to be_a(Hash)
    expect(user_json[:data][:attributes][:email]).to be_a(String)
    expect(user_json[:data][:attributes][:api_key]).to be_a(String)
  end

  it 'sad path unsuccessfully creates a user unmatching passwords', :vcr do 
    user_params = { 
      "email": "johnthefisherman@gmail.com",
      "password": "ToTheLake",
      "password_confirmation": "ToTheMoon"
    }
   
    post '/api/v1/users',  params: user_params
    
    user_json = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful
    expect(response.status).to eq(200)

    expect(user_json).to be_a(Hash)
    expect(user_json[:message]).to be_a(String)
    expect(user_json[:message]).to eq("Passwords Do Not Match")
  end

  it 'sad path unsuccessfully creates a user with existing email', :vcr do 
    user = (build :user)
    
    user_params = { 
      "email": "#{user.email}",
      "password": "ToTheMoon",
      "password_confirmation": "ToTheMoon"
    }
   
    post '/api/v1/users',  params: user_params

    post '/api/v1/users',  params: user_params
    
    user_json = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful
    expect(response.status).to eq(200)

    expect(user_json).to be_a(Hash)
    expect(user_json[:message]).to be_a(String)
    expect(user_json[:message]).to eq("Email Already Exists")
  end
end