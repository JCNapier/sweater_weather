require 'rails_helper'

RSpec.describe 'Creating a User' do
  it 'successfully creates a user' do 
    user_params = { 
      email: "johnthefisherman@gmail.com",
      password: "ToTheMoon",
      password_confirmation: "ToTheMoon"
    }
   
    post '/api/v1/users',  params: user_params
    
    user_json = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(user_json).to be_a(Hash)
  end
end