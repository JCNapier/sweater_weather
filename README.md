# Sweater Weather

![languages](https://img.shields.io/github/languages/top/JCNapier/sweater_weather?color=red)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov)
[![All Contributors](https://img.shields.io/badge/contributors-1-orange.svg?style=flat)](#contributors-)


## Description 

Sweater Weather is a BE application that is designed to return desired weather conditons for a specific area. The current weather, a five day forecast, and a 48 hour forecast are all available. Directions from one laction to another are also available. By combining the two, Sweater Weather is able to geocode a destination location based on its name, find the route to that destination, and also return what the current weather conditions will be upon arrival of the desired destination. Sweater weather consumes data from an active weather API, as well as the active mapquest API. By creating endpoints in a new API, Sweater Weather is able to serialize, and send data to the FE application.

## APIs Used 

- [Open Weather API](https://openweathermap.org/api)
- [Map Quest API](https://developer.mapquest.com/documentation/)
- [Unsplash Photo API](https://unsplash.com/documentation)

## Learning Goals 
- Create a functioning BE API through the consumption of other APIs
- Follow SOA convention
- Create new endpoints
- Use serializers to package, and send JSON responses
- Implement sessions after user sign in
- Test API exposure
- Combine the consumption of multiple APIs for a single JSON response.

## Versions
- Ruby 2.7.2
- Rails 5.2.6

## Gems
```ruby 
  #Global Scope Gems 
  gem 'bcrypt', '~> 3.1.7'
  gem 'faraday'
  gem 'jsonapi-serializer'
  gem 'figaro'
  
  #group :development, :test
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'pry'
  gem 'faker'
  gem 'simplecov'
  gem 'factory_bot_rails'
  
  #group :test
  gem 'capybara'
  gem 'launchy'
  gem 'orderly'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'vcr'
  gem 'webmock'
```
- [VCR Docs](https://github.com/vcr/vcr)
- [Figaro Docs](https://github.com/laserlemon/figaro)
- [Faraday Docs](https://lostisland.github.io/faraday/)
- [JSONAPI_Serialzier Docs](https://github.com/jsonapi-serializer/jsonapi-serializer)
- [WebMock Docs](https://github.com/bblimke/webmock)
- [SimpleCov Docs](https://github.com/simplecov-ruby/simplecov)
- [Factory Bot Rails Docs](https://github.com/thoughtbot/factory_bot_rails)
- [Faker Docs](https://github.com/faker-ruby/faker)
- [Bcrypt Docs](https://github.com/bcrypt-ruby/bcrypt-ruby)

## Local Setup 

1. Fork & Clone the repo 
```shell
$ git clone git@github.com:JCNapier/sweater_weather.git
```
2. Navigate to the directory 
```shell 
$ cd sweater_weather
```
3. Install gem packages:
```shell
$ bundle install
```
4. Update gem packages: 
```shell
$ bundle update
```
5. SRun the migrations: 
```shell
$ rake db:{drop,create,migrate,seed}
```

## Test Suite 

To properly run the test suite you will need to run the following commands in terminal: 

1. Navigate to both API websites, and request a new API key for each of the APIs so you can properly access the data. 
2. Once you have the and API key for each necesssary API, navigate to the ```/config/application.yml``` file. The path is ```/config/application.yml```
3. If you do not see an ```/config/application.yml``` file run the command ```shell bundle exec figaro install``` In the terminal. The ```/config/application.yml``` should appear. 
4. Add your API keys in this format at the bottom of the ```ruby/config/application.yml``` file: 
  - ```map_key: 'api_key'```
  - ```weather_key: 'api_key'```
  - ```photo_key: 'api_key'```
5. Once you have the API keys in place, you can run the entire test suite! To do this simply run the command ```shell bundle exec rspec```
6. You will notice the first time the test suite is run it is slow. This is because of VCR. VCR records the API response and stores it in a cassette to keep API rate limits low, and optimize the test suite performance. 

- [VCR Docs](https://github.com/vcr/vcr)
- [Figaro Docs](https://github.com/laserlemon/figaro)

## End Points Created
- ``` GET /api/v1/forecast?location=denver,co```
- ``` GET /api/v1backgrounds?location=denver,co```
- ``` POST /api/v1/users``` 
  *JSON Params Passed for User create* 
  ![Screen Shot 2022-03-09 at 12 45 30 AM](https://user-images.githubusercontent.com/81737385/157395634-45693079-1544-4e9e-8d3e-ddb6aa5f2de3.png)
- ``` POST /api/v1/sessions``` 
  *JSON Params Passed for User login/Session Creation* 
  ![Screen Shot 2022-03-09 at 12 49 21 AM](https://user-images.githubusercontent.com/81737385/157396212-2fb52f09-5a54-4522-9550-757ab9b7636c.png)
- ``` POST /api/v1/road_trip``` 
  *JSON Params Passed for Road Trip Creation
  ![Screen Shot 2022-03-09 at 12 51 10 AM](https://user-images.githubusercontent.com/81737385/157396510-16969130-40d2-4ef7-b769-8d0669d74c41.png)

## Schema 
![Screen Shot 2022-03-08 at 11 57 38 PM](https://user-images.githubusercontent.com/81737385/157388892-9b09c05e-20c5-4c02-9870-de10ac3dd600.png)

## Project Contributors

<a href="https://github.com/JCNapier/sweater_weather/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=JCNapier/sweater_weather" />
</a>


