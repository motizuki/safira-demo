# This migration comes from dam_uploader_engine (originally 20160515224328)
class RemoveHowUseFromDamDownload < ActiveRecord::Migration
  def change
    remove_column :dam_downloads, :how_use, :string
  end
end
