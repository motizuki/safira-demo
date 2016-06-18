# This migration comes from dam_uploader_engine (originally 20160503012939)
class CreateDamMedia < ActiveRecord::Migration
  def change
    create_table :dam_media do |t|
      t.string :media_file
      t.timestamps null: false
    end
  end
end
