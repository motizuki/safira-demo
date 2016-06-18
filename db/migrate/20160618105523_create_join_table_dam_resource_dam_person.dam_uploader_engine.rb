# This migration comes from dam_uploader_engine (originally 20160501225904)
class CreateJoinTableDamResourceDamPerson < ActiveRecord::Migration
  def change
    create_join_table :dam_resources, :dam_people do |t|
      # t.index [:dam_resource_id, :dam_person_id]
      # t.index [:dam_person_id, :dam_resource_id]
    end
  end
end
