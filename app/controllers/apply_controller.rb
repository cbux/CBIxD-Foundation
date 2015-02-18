class ApplyController < ApplicationController
	before_action :debug
	def index
		if session[:auth] == "authenticated"
			render 'apply_authenticated'
		else
			render 'apply_unknown'
		end
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
	end
end