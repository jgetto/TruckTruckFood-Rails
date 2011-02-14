include Math

class ApplicationController < ActionController::Base
  protect_from_forgery


  def find_within(lat, lon, n)
    close_trucks = []
    Truck.all.each do |truck|
      if dist_between(lat, lon, truck[:lat], truck[:lon]) <= n
        close_trucks << truck
      end
    end
    close_trucks
  end

  def dist_between(lat1, lon1, lat2, lon2)
    3963.0 * Math.acos(Math.sin(lat1/57.2958) * Math.sin(lat2/57.2958) + Math.cos(lat1/57.2958) * Math.cos(lat2/57.2958) * Math.cos(lon2/57.2958 -lon1/57.2958))
  end

  def gps2addr(lat,lon)
    location = ''
    types = ["street_number","route","locality"]
    result = Net::HTTP.get(URI.parse('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + lat.to_s + ',' + lon.to_s + '&sensor=false'))
    parsed_result = ActiveSupport::JSON.decode(result)
    components = parsed_result["results"][0]["address_components"]
    components.each do |item|
      if types.include?(item["types"][0])
        location += ' '+item["short_name"]
      end
    end
    return location
  end
end
