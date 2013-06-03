class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :url
      t.string :header
      t.text :description
      t.references :group

      t.timestamps
    end
    add_index :items, :group_id
  end
end
