class LoginsController < ApplicationController
  
	def show
		@login = Login.find(params[:id])
	end

	def new
		@login = Login.new
	end

	def create
		@login = Login.new(params[:login])
		if @login.save
			flash[:success] = "User created successfuly!"
			redirect_to @login
			# Handle a successful save.
		else
			render 'new'
		end
	end
  
end
