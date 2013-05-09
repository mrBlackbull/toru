class CleaningUpTables < ActiveRecord::Migration
  def up
    remove_column :comments, :commenter
    remove_column :posts, :posted_by
    remove_column :posts, :posted_by_uid


  end

  def down
    add_column :comments, :commenter, :string
    add_column :posts, :posted_by, :string
    add_column :posts, :posted_by_uid, :string
  end
end
