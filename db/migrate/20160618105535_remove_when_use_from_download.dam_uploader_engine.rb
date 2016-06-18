# This migration comes from dam_uploader_engine (originally 20160517044556)
class RemoveWhenUseFromDownload < ActiveRecord::Migration
  def change
    remove_column :dam_downloads, :when_use, :string
    add_column :dam_downloads, :when_use_from, :date
    add_column :dam_downloads, :when_use_to, :date
  end
end
