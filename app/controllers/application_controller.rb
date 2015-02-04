class ApplicationController < ActionController::Base
	before_action :auth
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def auth
  	if params[:auth] && params[:auth] == "unknown" || params[:auth] == "known" || params[:auth] == "authenticated" ||
  		session[:auth] = params[:auth]
  	end
  	@auth = session[:authentication]
  	@auth ||= "unknown"
  end
end
