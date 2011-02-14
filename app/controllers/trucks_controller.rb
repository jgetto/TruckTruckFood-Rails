class TrucksController < ApplicationController
  def map
    @map = Cartographer::Gmap.new( 'map' )
    @map.zoom = :bound
    @map.icons << Cartographer::Gicon.new
    Truck.all.each do |truck|
      temp_marker = Cartographer::Gmarker.new(:name=> truck[:name], :marker_type => "Building",
                                               :position => [truck[:lat],truck[:lon]],
                                               :info_window_url => "site_url")
      @map.markers << temp_marker
    end

  end


  def locate
    user_lat = params[:lat].to_f
    user_lon = params[:lon].to_f
    dist = params[:dist].to_i
    @trucks = find_within( user_lat,  user_lon, dist)
  end
end