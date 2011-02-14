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

  def get_location(truck)
    @truck = truck
    if @truck.location
      @truck.location
    else
      [@truck.lat.to_s+','+@truck.lon.to_s]
    end
  end

end
