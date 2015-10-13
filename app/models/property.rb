class Property < ActiveRecord::Base
	belongs_to :user

	def self.print
		Property.first.location
	end

	def self.available?
		Property.first.availability
	end
end
