class AddColumnToTruck < ActiveRecord::Migration
  def self.up
    add_column :trucks, :image_url, :string
    add_column :trucks, :description, :text
  end

  def self.down
    remove_column :trucks, :description
    remove_column :trucks, :image_url
  end
end
