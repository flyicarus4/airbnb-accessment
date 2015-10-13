class Property < ActiveRecord::Base
	belongs_to :user

	def self.print
		Property.first
	end

	def self.available?
		Property.first
	end
end
