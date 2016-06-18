# This migration comes from dam_uploader_engine (originally 20160503013330)
class AddMediaIdToDamResource < ActiveRecord::Migration
  def change
    add_column :dam_resources, :dam_media_id, :int
  end
end
