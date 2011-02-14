require 'net/http'

module TrucksHelper

  def add_space(name)
    array = name.split('_')
    array.join(' ')
  end
  def shorten_url(url)
      array = url.split('http://www.')
      array.join('')
  end
  def gps2addr(lat,lon)
    result = Net::HTTP.get(URI.parse('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + lat.to_s + ',' + lon.to_s + '&sensor=false'))
    parsed_result = ActiveSupport::JSON.decode(result)
    puts parsed_result["results"].split("formatted_address")[1]
  end

end
