class CreateGroupProfiles < ActiveRecord::Migration
  def change
    create_table :group_profiles do |t|
      t.string :group_mission
      t.string :text_block_body
      t.string :text_block_content
      t.references :group
      t.timestamps
    end
    add_index :group_profiles, :group_id
  end
end
