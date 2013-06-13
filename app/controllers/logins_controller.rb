class LoginsController < ApplicationController
  
  def show
  	@login = Login.find(params[:id])
  end

  def new
  end
end
