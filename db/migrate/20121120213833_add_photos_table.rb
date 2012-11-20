class AddPhotosTable < ActiveRecord::Migration
	def change
		create_table :photos do |t|
			t.string :caption
			t.string :photo
			t.integer :user_id
			t.timestamps
		end
	end
end
