# This migration comes from dam_uploader_engine (originally 20160501225933)
class CreateJoinTableDamResourceDamLocation < ActiveRecord::Migration
  def change
    create_join_table :dam_resources, :dam_locations do |t|
      # t.index [:dam_resource_id, :dam_location_id]
      # t.index [:dam_location_id, :dam_resource_id]
    end
  end
end
