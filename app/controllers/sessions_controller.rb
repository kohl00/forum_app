class SessionsController < Devise::SessionsController

	layout 'landingpage'

	def new
		super
	end

end