class ProjectController < ApplicationController

	def show
  		@project = Project.all
  	end
  
	def new
		@project = Project.new
	end

	def create
    @project = User.new(params[:user])
    if @project.save
      # Handle a successful save.
	else
    	  render 'new'
    	end
	end

end
