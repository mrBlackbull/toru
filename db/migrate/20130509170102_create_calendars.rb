class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :date
      t.date :
      t.string :starts_at
      t.datetime :
      t.string :ends_at
      t.datetime :
      t.string :location
      t.string :
      t.string :room_number
      t.string :
      t.string :info
      t.text :
      t.references :group

      t.timestamps
    end
    add_index :calendars, :group_id
  end
end
