class HomeController < ApplicationController
	before_action :debug
	def index
		if session[:auth] == "authenticated"
			render 'dashboard'
		else
			render 'index'
		end
	end

	private
  def debug
  	if params[:action] == "index"
  		@statuses = {"sign out" => {:signed_out => "true"}, "account deleted" => {:deleted_account => "true"}}
  	end
  end
end