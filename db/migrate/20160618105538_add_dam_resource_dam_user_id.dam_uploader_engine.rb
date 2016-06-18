# This migration comes from dam_uploader_engine (originally 20160524215222)
class AddDamResourceDamUserId < ActiveRecord::Migration
  def change
    add_column :dam_resources, :dam_user_id, :int
  end
end
