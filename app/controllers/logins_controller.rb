class LoginsController < ApplicationController
  
  def show
  	@login = Login.find(params[:id])
  end

  def new
  	@login = Login.new
  end

  def signup
  end
  
end
