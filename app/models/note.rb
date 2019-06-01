class Note < ActiveRecord::Base
  # Remember to create a migration!
  def pretty_time
  	self.created_at.strftime( %e, %b, %Y)
  end
end
