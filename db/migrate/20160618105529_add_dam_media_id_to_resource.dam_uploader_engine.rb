# This migration comes from dam_uploader_engine (originally 20160503033638)
class AddDamMediaIdToResource < ActiveRecord::Migration
  def change
    add_column :dam_media, :dam_resource_id, :int
  end
end
