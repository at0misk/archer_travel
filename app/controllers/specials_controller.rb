class SpecialsController < ApplicationController
	def index
		@specials = Special.all
	end
	def new
		if session[:uploaded_id]
			@special = Special.find(session[:uploaded_id])
		end
		session[:uploaded_id] = false
	end
	def create
		@special = Special.new(special_params)
		if @special.save
			session[:uploaded_id] = @special.id
		else
			flash[:errors] = "Something went wrong"
		end
			redirect_to :back
	end
	def special_params
		params.require(:special).permit(:title, :description, :image)
	end
end
