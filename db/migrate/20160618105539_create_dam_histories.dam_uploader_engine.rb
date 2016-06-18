# This migration comes from dam_uploader_engine (originally 20160526214301)
class CreateDamHistories < ActiveRecord::Migration
  def change
    create_table :dam_histories do |t|
      t.references :trackable, polymorphic: true, index: true
      t.string :notes
      t.integer :dam_user_id
      t.integer :dam_history_reason_id
      t.integer :track_action, default: 0

      t.timestamps null: false
    end
  end
end
