# This migration comes from dam_uploader_engine (originally 20160529095306)
class ChangeNotesColumn < ActiveRecord::Migration
  def change
    change_column :dam_histories, :notes, :text
  end
end
