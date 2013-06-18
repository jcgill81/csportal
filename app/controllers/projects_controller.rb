class ProjectsController < ApplicationController

	def show
  		@project = Project.find(params[:id])
  	end
  
	def new
		@project = Project.new
	end

	def create
	    @project = Project.new(params[:project])
    	if @project.save
    		flash[:success] = "Entry created successfuly!"
    		redirect_to @project
      	# Handle a successful save.
		else
    		render 'new'
    	end
	end

end
