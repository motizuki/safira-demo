# This migration comes from dam_uploader_engine (originally 20160512033118)
class CreateDamDownloads < ActiveRecord::Migration
  def change
    create_table :dam_downloads do |t|
      t.string :how_use
      t.string :why_use
      t.string :when_use
      t.integer :downloadable_id
      t.string :downloadable_type

      t.timestamps null: false
    end
  end
end
