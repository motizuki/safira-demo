# This migration comes from dam_uploader_engine (originally 20160515222751)
class CreateDamDownloadReasons < ActiveRecord::Migration
  def change
    create_table :dam_download_reasons do |t|
      t.string :reason

      t.timestamps null: false
    end
  end
end
