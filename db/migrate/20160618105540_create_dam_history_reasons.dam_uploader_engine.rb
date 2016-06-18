# This migration comes from dam_uploader_engine (originally 20160526214517)
class CreateDamHistoryReasons < ActiveRecord::Migration
  def change
    create_table :dam_history_reasons do |t|
      t.string :reason

      t.integer :track_action, default: 0
      t.timestamps null: false
    end
  end
end
