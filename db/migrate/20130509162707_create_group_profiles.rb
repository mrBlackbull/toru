class CreateGroupProfiles < ActiveRecord::Migration
  def change
    create_table :group_profiles do |t|
      t.string :group_mission
      # t.text :
      t.string :text_block_body
      # t.string :
      t.string :text_block_content
      # t.text :
      t.references :group
      t.timestamps
    end
    add_index :group_profiles, :group_id
  end
end
