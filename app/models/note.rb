class Note < ActiveRecord::Base
  # Remember to create a migration!
	def pretty_time
		self.created_at.strftime("%B, %d, %Y")
	end
end
