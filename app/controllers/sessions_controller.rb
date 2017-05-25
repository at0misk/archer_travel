class SessionsController < ApplicationController
	def root
		@specials = Special.all
		if @specials.length > 0 
			@rand = rand(0..@specials.length-1)
			@special = @specials[@rand]
		end
	end
	def admin_login
	end
	def create_login
		if params['username'] == "Admin" && params['password'] == "1234"
			session[:admin] = true
		else
			flash[:errors] = "Incorrect username / password"
		end
		redirect_to '/'
	end
	def about
	end
	def contact
	end
	def send_mail
		# Placeholder - use mailer here
		redirect_to '/contact'
	end
end
