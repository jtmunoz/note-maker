class Note < ActiveRecord::Base
	def pretty_time
		self.created_at.strftime("%B, %d, %Y")
	end
end
