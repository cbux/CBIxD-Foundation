class ApplyController < ApplicationController
	before_action :debug
	def index
		@has_screener ||= "true"
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