class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :location
      t.integer :locatable_id
      t.string :locatable_type
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
