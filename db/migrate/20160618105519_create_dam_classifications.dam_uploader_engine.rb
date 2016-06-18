# This migration comes from dam_uploader_engine (originally 20160429014735)
class CreateDamClassifications < ActiveRecord::Migration
  def change
    create_table :dam_classifications do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
