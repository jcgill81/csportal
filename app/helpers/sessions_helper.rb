module SessionsHelper

	def sign_in(login)
    	cookies.permanent[:remember_token] = login.remember_token
    	self.current_user = login
	end

	def signed_in?
	    !current_user.nil?
	end

	def current_user=(login)
    	@current_user = login
	end

	def current_user
	    @current_user ||= Login.find_by_remember_token(cookies[:remember_token])
	end



end
