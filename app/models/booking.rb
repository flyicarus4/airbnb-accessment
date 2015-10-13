class Booking < ActiveRecord::Base
	belongs_to :property
	belongs_to :user
	has_many :comment
end
