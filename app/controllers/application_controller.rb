class ApplicationController < ActionController::Base
	before_action :auth, :delete_account
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  private
  def auth
  	if params[:auth]
  		session[:auth] = params[:auth]
  	end
  	@auth = session[:auth]
  	@auth ||= "unknown"
  end

  def delete_account
  	if params[:deleted_account] == "true"
  		@success_message = "You're Careerbuilder Account has been deleted"
  	end
  end
end
