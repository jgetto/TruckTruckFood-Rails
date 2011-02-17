class TrucksController < ApplicationController
   skip_before_filter :verify_authenticity_token
  def map
    @trucks = Truck.all
    @map = Cartographer::Gmap.new( 'map' , {:min_zoom => 12})
    @map.zoom = :bound
    @map.icons << Cartographer::Gicon.new(:name => "truck",
                                          :image_url => 'images/marker.png',:width => '18' , :height=> '28')
    @map.icons << Cartographer::Gicon.new(:name => "truck_alt",
                                          :image_url => 'images/marker_alt.png',:width => '18' , :height=> '28')        
    @map.icons << Cartographer::Gicon.new(:name => "truck_shadow",
                                          :image_url => 'images/shadow-marker2.png',:width => '48' , :height=> '28')
    @trucks.each do |truck|
      temp_marker = Cartographer::Gmarker.new(:name=> truck[:name], :marker_type => "Building",
                                              :icon => "truck",
                                              :shadow => "truck_shadow",
                                              :position => [truck[:lat],truck[:lon]],
                                              :info_window_url => "trucks/"+truck[:id].to_s,
                                              :draggable => false,
                                              :min_zoom => 5)
      @map.markers << temp_marker
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @story }
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

# POST update
  def update
    puts params
    @truck = Truck.find_by_id(params[:id]);
    @truck.lon = params[:lon];
    @truck.lat = params[:lat];
    @truck.location = gps2addr(@truck.lat,@truck.lon)
    respond_to do |format|
      if @truck.save
#        format.html # show.html.erb
        format.json {redner :json => @truck}
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