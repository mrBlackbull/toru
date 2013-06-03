class HomeController < ApplicationController
	layout "home"	
	before_filter :redirect_if_signed_in


	def redirect_if_signed_in
		if signed_in?(:user)
			redirect_to "/groups"
		end
	end

	def index
	end
end
