require 'rails_helper'

RSpec.describe Forecast do
  let(:forecast) {WeatherFacade.all_weather("Denver,CO")}

  it 'attributes' do 
    expect(forecast).to be_a(Forecast)
  end
end