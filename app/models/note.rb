class Note < ActiveRecord::Base

	validates_presence_of :title, message: "Needs A Title"
	validates_presence_of :body, message: "Needs A Body"

	def pretty_time
		self.created_at.strftime("%e %b %Y")
	end
end
