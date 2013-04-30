class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.string :posted_by
      t.integer :posted_by_uid

      t.timestamps
    end
  end
end
