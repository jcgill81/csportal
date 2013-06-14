class ProjectController < ApplicationController

	def show
  		@project = Project.all
  	end
  
	def new
		@project = Project.new
		project.save
	end


end
