class ResumesController < ApplicationController
	before_action :debug
	def index
		if session[:auth] == "authenticated"
			render 'resume_post_authenticated'
		else
			params[:success] = nil
			params[:message] = nil
			params[:error] = nil
			params[:warning] = nil
			render 'resume_post_unknown'
		end
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
  end
end