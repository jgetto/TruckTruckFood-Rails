class CreateTrucks < ActiveRecord::Migration
  def self.up
    create_table :trucks do |t|
      t.string :name
      t.string :site_url
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end

  def self.down
    drop_table :trucks
  end
end
