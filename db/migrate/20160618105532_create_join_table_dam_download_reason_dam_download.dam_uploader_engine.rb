# This migration comes from dam_uploader_engine (originally 20160515223143)
class CreateJoinTableDamDownloadReasonDamDownload < ActiveRecord::Migration
  def change
    create_join_table :dam_download_reasons, :dam_downloads do |t|
      # t.index [:dam_download_reason_id, :dam_download_id]
      # t.index [:dam_download_id, :dam_download_reason_id]
    end
  end
end
