class Note < ActiveRecord::Base
	def pretty_time
		self.created_at.strftime("%e %b %Y")
	end
end
