class SessionsController < ApplicationController

	def new
	end

	def create
		login = Login.find_by_email(params[:session][:email].downcase)
  		if login && login.authenticate(params[:session][:password])
  			sign_in login
      		redirect_to root_path
		else
			flash.now[:error] = 'Invalid email/password combination'
      		render 'new'
		end
	end

	def destroy
	end

end
