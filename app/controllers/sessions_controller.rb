class SessionsController < ApplicationController
	require 'open-uri'
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
	def flights
		# doc = Nokogiri::HTML(open("https://faregrabbr.com/#/flight"))
		# @form = doc.css('.search-form')
		# @entriesArray = []
		# entries.each do |val|
		# 	title = val.css('p.title>a').text
		# 	link = val.css('p.title>a')[0]['href']
		# 	if link.start_with?('http') or  ".com".in? link
		# 		@entriesArray << Entry.new(title, link)
		# 	else
		# 		pref = "http://reddit.com" + link
		# 		@entriesArray << Entry.new(title, pref)
		# 	end
		# end
	end
end
