class Note < ActiveRecord::Base

	validates :title, presence: true
	validates :body, presence: true

	def pretty_time
		self.created_at.strftime("%e %b %Y")
	end
end
