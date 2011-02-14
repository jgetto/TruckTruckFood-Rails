class Truck < ActiveRecord::Base
  validates :name, :uniqueness => true
  validates :name, :lon, :lat, :presence => true
end
