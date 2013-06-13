class LoginsController < ApplicationController
  
  def show
  	@login = Login.find(params[:id])
  end

  def new
  end

  def signup
  end
  
end
