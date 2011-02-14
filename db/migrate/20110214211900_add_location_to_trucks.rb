class AddLocationToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :location, :string
  end

  def self.down
    remove_column :trucks, :location
  end
end
