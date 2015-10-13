class User < ActiveRecord::Base
	has_many :properties

	def self.authenticate (block, pass)
		if (User.find_by(username: block)) && (User.find_by(password: pass))
			return true
		else
			return false
		end 
	end
end
