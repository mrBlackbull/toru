class RemoveStringFromGroup < ActiveRecord::Migration
  def up
    remove_column :groups, :string
  end

  def down
    add_column :groups, :string, :string
  end
end
