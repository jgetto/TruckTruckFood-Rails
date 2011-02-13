# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Truck.create(:name => 'Olin Truck', :site_url => "http://www.olin.edu", :lat => 42.291444, :lon =>  -71.2640769)
Truck.create(:name => 'Babson Truck', :site_url => "http://www.babson.edu", :lat => 42.2969514, :lon =>  -71.2652577)
Truck.create(:name => 'Wellesley Truck', :site_url => "http://www.wellesley.edu", :lat => 42.293405, :lon =>  -71.3067231)
Truck.create(:name => 'MIT Truck', :site_url => "http://www.mit.edu", :lat => 42.3597957, :lon => -71.0944908)