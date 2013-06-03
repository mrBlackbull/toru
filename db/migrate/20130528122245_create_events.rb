class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.time :starts_at
      t.time :ends_at
      t.string :location
      t.string :room_number
      t.text :info
      t.references :group

      t.timestamps
    end
    add_index :events, :group_id
  end
end
