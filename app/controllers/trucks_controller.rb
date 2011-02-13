class TrucksController < ApplicationController
  def map
  end

  def locate
    user_lat = params[:lat].to_f
    user_lon = params[:lon].to_f
    dist = params[:dist].to_i
    @trucks = find_within( user_lat,  user_lon, dist)
  end
end