# This migration comes from dam_uploader_engine (originally 20160429024913)
class AddResourceAssetToDamResources < ActiveRecord::Migration
  def change
    add_column :dam_resources, :asset, :string
  end
end
