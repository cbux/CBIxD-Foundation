class ApplicationController < ActionController::Base
	before_action :auth, :delete_account, :success
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

  def success
  	if params[:action] == "after_apply"
  		params[:success] = "true"
  		@success_message = "You have successfully applied for Practice Coordinator at Confidential in Atlanta, GA. Your resume has been sent via email to the employer. You will receive an email confirmation once it is received by the employer."
  	end
  end

  def delete_account
  	if params[:deleted_account] == "true"
  		@success_message = "You're Careerbuilder Account has been deleted"
  	end
  end
end
