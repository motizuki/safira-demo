# This migration comes from dam_uploader_engine (originally 20160502224554)
class AddConsentFileToResource < ActiveRecord::Migration
  def change
    add_column :dam_resources, :consent_file, :string
  end
end
