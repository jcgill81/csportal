class ProjectController < ApplicationController

	def show
  		@project = Project.all
  	end
  
	def new
		@project = Project.new
	end

	def create
	    @project = Project.new(params[:project])
    	if @project.save
    		redirect_to @project
      	# Handle a successful save.
		else
    		render 'new'
    	end
	end

end
