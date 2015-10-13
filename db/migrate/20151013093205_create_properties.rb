class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.string :location
			t.string :availbility
			t.belongs_to :user

			t.timestamps null: false
		end
	end
end
