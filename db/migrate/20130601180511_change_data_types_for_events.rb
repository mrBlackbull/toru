class ChangeDataTypesForEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date
    remove_column :events, :starts_at
    remove_column :events, :ends_at
    add_column :events, :date, :string
    add_column :events, :starts_at, :string
    add_column :events, :ends_at, :string
  end

  def down
    remove_column :events, :date
    remove_column :events, :starts_at
    remove_column :events, :ends_at
    add_column :events, :date, :string
    add_column :events, :starts_at, :string
    add_column :events, :ends_at, :string
  end
end

