class RoadtripFacade 
  def self.trip_info(trip_params)
    directions = MapQuestService.directions(trip_params)

    # return 400 if directions[:info][:statuscode] == 400
    departure = directions[:route][:locations][0][:adminArea5] + ", " + directions[:route][:locations][0][:adminArea3]
    destination = directions[:route][:locations][0][:adminArea4] + ", " + directions[:route][:locations][0][:adminArea3]
  end
end