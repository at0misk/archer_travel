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
	def privacy
	end
	def terms
	end
	def send_mail
		# Placeholder - use mailer here
		redirect_to '/contact'
	end
	def hawaii
		session[:hawaii] = true
		redirect_to '/'
	end
	def vegas
		session[:vegas] = true
		redirect_to '/'
	end
	def alaska
		session[:alaska] = true
		redirect_to '/'
	end
	def europe
		session[:europe] = true
		redirect_to '/'
	end
	def luxury
		session[:luxury] = true
		redirect_to '/'
	end
	def short
		session[:short] = true
		redirect_to '/'
	end
	def active
		session[:active] = true
		redirect_to '/'
	end
	def carribean
		session[:carribean] = true
		redirect_to '/'
	end
	def river
		session[:river] = true
		redirect_to '/'
	end
	def distinct
		session[:distinct] = true
		redirect_to '/'
	end
end
