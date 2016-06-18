# This migration comes from dam_uploader_engine (originally 20160501225918)
class CreateJoinTableDamResourceDamClassification < ActiveRecord::Migration
  def change
    create_join_table :dam_resources, :dam_classifications do |t|
      # t.index [:dam_resource_id, :dam_classification_id]
      # t.index [:dam_classification_id, :dam_resource_id]
    end
  end
end
