class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.string :location
			t.string :availability
			t.belongs_to :user, null: false

			t.timestamps null: false
		end
	end
end
