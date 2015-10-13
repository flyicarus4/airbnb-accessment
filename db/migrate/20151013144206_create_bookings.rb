class CreateBookings < ActiveRecord::Migration
	def change
		create_table :bookings do |t|
			t.belongs_to :property
			t.belongs_to :user

			t.timestamps null: false
		end
	end
end
