class User < ActiveRecord::Base
	has_many :properties
	has_many :comments

	def self.authenticate (block, pass)
		if (User.find_by(username: block, password: pass))
			return true
		else
			return false
		end 
	end

	def self.print
		User.first
	end
end
