class UserMailer < ApplicationMailer
default from: 'notifications@example.com'
	def contact_mail(name, email, inquiry)
		@name = name
		@email = email
		@inquiry = inquiry
		mail(to: 'kevint@archertravel.com', subject: 'Archer Travel Contact Form')
	end
end
