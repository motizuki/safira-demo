# This migration comes from dam_uploader_engine (originally 20160429020927)
class CreateDamLocations < ActiveRecord::Migration
  def change
    create_table :dam_locations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
