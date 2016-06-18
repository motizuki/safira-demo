# This migration comes from dam_uploader_engine (originally 20160524040554)
class AddDamResourceStatus < ActiveRecord::Migration
  def change
    add_column :dam_resources, :status, :int, default: 0
  end
end
