class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.string :comment
			t.belongs_to :user
			t.belongs_to :booking

			t.timestamps null: false
		end
	end
end
