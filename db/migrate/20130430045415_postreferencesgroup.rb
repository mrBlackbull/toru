class Postreferencesgroup < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.references :group
  	end
  end
end
