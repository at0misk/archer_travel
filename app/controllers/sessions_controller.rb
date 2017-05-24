class SessionsController < ApplicationController
	def root
		@specials = Special.all
		if @specials.length > 0 
			@rand = rand(0..@specials.length-1)
			@special = @specials[@rand]
		end
	end
end
