class RenameGroupProfilesToProfiles < ActiveRecord::Migration
  def self.up
    remove_index :group_profiles, :group_id
    rename_table :group_profiles, :profiles
    add_index :profiles, :group_id
  end 

  def self.down
    remove_index :profiles, :group_id
    rename_table :profiles, :group_profiles
    add_index :group_profiles, :group_id
  end
end


