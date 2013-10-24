class ApplicationController < ActionController::Base
  protect_from_forgery
  def authorise_admin
  	if !view_context.admin_is_logged_in? 

    	redirect_to root_path, notice: "You have to log in first"
    	
	end
  end
end
