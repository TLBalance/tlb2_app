class WifisController < ApplicationController

  def new
  
  end 
  
  def create
  
  end 
  
  def edit
    
  end
  
  def update
  
  end 
  
  
  def confirm_key

	@wifi = Wifi.find_by(key: params[:wifi][:key])

	if @wifi && !@wifi.status
	  #Change Wifi Status to TRUE - this needs to be moved to the User controller
	  #@wifi.toggle!(:status) - turned off for testing purposes
	  flash[:success] = "Wifi Activated"
	  redirect_to signup_path(key: params[:wifi][:key])
	else
	  flash[:error] = "Wifi Key is not valid"
	  redirect_to '/connection'
	end 
  end 

end
