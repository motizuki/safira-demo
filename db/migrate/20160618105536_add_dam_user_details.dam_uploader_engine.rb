# This migration comes from dam_uploader_engine (originally 20160518110915)
class AddDamUserDetails < ActiveRecord::Migration
  def change
    add_column DamUploader.config.user_table, :name, :string
    add_column DamUploader.config.user_table, :access_level, :int, default: 0
  end
end
