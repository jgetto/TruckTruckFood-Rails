class TrucksController < ApplicationController
   skip_before_filter :verify_authenticity_token
  def map
    @trucks = Truck.all
    @map = Cartographer::Gmap.new( 'map' )
    @map.zoom = :bound
    @map.icons << Cartographer::Gicon.new
    @trucks.each do |truck|
      temp_marker = Cartographer::Gmarker.new(:name=> truck[:name], :marker_type => "Building",
                                               :position => [truck[:lat],truck[:lon]],
                                               :info_window_url => truck[:id].to_s)
      @map.markers << temp_marker
    end
  end

  #POST trucks
  def create
    @truck = Truck.create(:name => params[:name],:lon => params[:lon],:lat => params[:lat])
    @truck.location = gps2addr(@truck.lat,@truck.lon)
    respond_to do |format|
      if @truck.save
#        format.html # show.html.erb
        format.json {render :json => @truck}
      else
        format.html # show.html.erb
        format.json {render :json => @truck.errors}
      end
    end
  end
  
  def show
    @truck = Truck.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @story }
    end
  end

  def locate
    user_lat = params[:lat].to_f
    user_lon = params[:lon].to_f
    dist = params[:dist].to_i
    @trucks = find_within( user_lat,  user_lon, dist)
    respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @story }
    format.json { render :json => @trucks}
    end
  end
end