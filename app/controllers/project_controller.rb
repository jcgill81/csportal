class ProjectController < ApplicationController

	def show
  		@project = Project.find(params[:id])
  	end
  
	def new
		@project = Project.new
	end


end
