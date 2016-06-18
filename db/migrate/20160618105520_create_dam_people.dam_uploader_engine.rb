# This migration comes from dam_uploader_engine (originally 20160429020909)
class CreateDamPeople < ActiveRecord::Migration
  def change
    create_table :dam_people do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
