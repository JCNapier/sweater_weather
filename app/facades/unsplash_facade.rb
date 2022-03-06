class UnsplashFacade
  def self.location_photo(city)
    data = UnsplashService.location_photo(city)

    Photo.new(data)
  end
end