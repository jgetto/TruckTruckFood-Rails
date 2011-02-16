# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Truck.create(:name => 'Olin_Truck', :site_url => "http://www.olin.edu", :lat => 42.291444, :lon =>  -71.2640769, :location => "Olin Way Needham")
Truck.create(:name => 'Babson_Truck', :site_url => "http://www.babson.edu", :lat => 42.2969514, :lon =>  -71.2652577, :location => "College Dr Wellesley")
Truck.create(:name => 'Wellesley_Truck', :site_url => "http://www.wellesley.edu", :lat => 42.293405, :lon =>  -71.3067231, :location => "21 College Rd Wellesley")
Truck.create(:name => 'MIT_Truck', :site_url => "http://www.mit.edu", :lat => 42.3597957, :lon => -71.0944908, :location => "106-120 Massachusetts Ave Cambridge")