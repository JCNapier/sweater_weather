class WeatherFacade 
  def self.all_weather(location)
    current = current_weather(location)
    daily = daily_weather(location)
    hourly = hourly_weather(location)

    Forecast.new(current, daily, hourly)
  end

  def self.current_weather(location)
    coords = MapQuestFacade.lat_long(location)
    data = WeatherService.current_weather(coords[:lat], coords[:lng])

    CurrentWeather.new(data[:current])    
  end

  def self.daily_weather(location)
    coords = MapQuestFacade.lat_long(location)
    data = WeatherService.current_weather(coords[:lat], coords[:lng])

    DailyWeather.new(data[:daily][0])
  end

  def self.hourly_weather(location)
    coords = MapQuestFacade.lat_long(location)
    data = WeatherService.current_weather(coords[:lat], coords[:lng])
  
    HourlyWeather.new(data[:hourly][0])
  end
end