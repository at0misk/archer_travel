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
		UserMailer.contact_mail(params['name'], params['email'], params['inquiry']).deliver_now
		flash[:sent] = "Thank you!  Your message has been sent."
		redirect_to '/contact'
	end
	def faregrabbr
		render :layout => false
	end
end
