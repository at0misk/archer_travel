class SpecialsController < ApplicationController
	def index
		@specials = Special.all
	end
	def view
		@special = Special.find(params['id'])
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
	def admin
		@specials = Special.all
	end
	def edit
		@special = Special.find(params['id'])
	end
	def update
		@special = Special.find(params['id'])
	    if @special.update(special_params)
	    	flash[:errors] = nil
	    else
	    	flash[:errors] = @special.errors.full_messages
	    end
	    redirect_to :back
	end
	def destroy
		Special.find(params['id']).destroy
		redirect_to '/specials/admin'
	end
	def special_params
		params.require(:special).permit(:title, :description, :image, :price)
	end
end
