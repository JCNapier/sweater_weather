# Sweater Weather

![languages](https://img.shields.io/github/languages/top/sweater_weather?color=red)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov)
[![All Contributors](https://img.shields.io/badge/contributors-5-orange.svg?style=flat)](#contributors-)


## Description 

Stoke Finder BE is the backend application of the Stoke Finder project. Stoke Finder is an application designed to aid users in the creation, and discovery of new outdoor adventures based on outdoor activities the user adds to their profile preferences. The purpose is to handle the consumption and creation of API's necessary for massaging and passing data to the FE application in the Stoke Finder, properly handling user authenitcation data that is passed to the BE, and demonstrating convetional means of packaging, sending, and receiving JSON responses to and from the FE server. The storage of all sensitive data that cannot be accessed through an API consumption on the FE, will be stored in the backend database. This data will be accessible for the FE through the API end points that are created on the BE application. 

## Versions
- Ruby 2.7.2
- Rails 5.2.6

## Gems
```ruby 
  #Global Scope Gems 
  gem 'bcrypt', '~> 3.1.7'
  gem 'faraday'
  gem 'bootstrap', '~> 5.1.3'
  gem 'jsonapi-serializer'
  
  #group :development, :test
  gem 'pry'
  gem 'rubocop-rails'
  gem 'figaro'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'faker'
  
  #group :test
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'vcr'
  gem 'webmock'
```

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
## Schema 
![Screen Shot 2022-03-08 at 11 57 38 PM](https://user-images.githubusercontent.com/81737385/157388892-9b09c05e-20c5-4c02-9870-de10ac3dd600.png)

## Learning Goals 
- Create a functioning BE API through the consumption of other APIs
- Follow SOA convention
- Use serializers to package, and send JSON responses
- Implement sessions after user sign in
- Test API exposure
- Consume necessary APIs

## Project Contributors 

<a href="https://github.com/sweater_weather/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=sweater_weather


