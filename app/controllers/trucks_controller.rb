class TrucksController < ApplicationController
  def map
    @map = Cartographer::Gmap.new( 'map' )
    @map.zoom = :bound
    @map.icons << Cartographer::Gicon.new
    marker1 = Cartographer::Gmarker.new(:name=> "taj_mahal", :marker_type => "Building",
                :position => [27.173006,78.042086],
                :info_window_url => "/url_for_info_content")
    marker2 = Cartographer::Gmarker.new(:name=> "raj_bhawan", :marker_type => "Building",
                :position => [28.614309,77.201353],
                :info_window_url => "/url_for_info_content")

    @map.markers << marker1
    @map.markers << marker2
  end

  def locate
    user_lat = params[:lat].to_f
    user_lon = params[:lon].to_f
    dist = params[:dist].to_i
    @trucks = find_within( user_lat,  user_lon, dist)
  end
end