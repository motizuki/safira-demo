# This migration comes from dam_uploader_engine (originally 20160429014719)
class CreateDamResources < ActiveRecord::Migration
  def change
    create_table :dam_resources do |t|
      t.string :title
      t.text :caption
      t.string :file_type
      t.text :description
      t.string :copyright_owner
      t.text :restrictions
      t.string :owner_name
      t.date :date
      t.date :expiry_date
      t.boolean :is_consent

      t.timestamps null: false
    end
  end
end
