class ResumesController < ApplicationController
	before_action :debug

	def index
		@path = resumes_path
		if session[:auth] == "authenticated" && session[:resumes].to_i >= 3
			params[:warning] = "true"
			@warning_message = "you got too many damn resumes"
			render 'manage_resumes_authenticated'
		elsif session[:auth] == "authenticated" && session[:resumes].to_i > 0
			render 'manage_resumes_authenticated'
		elsif session[:auth] == "authenticated"
			render 'resumes_post_authenticated'
		else
			render 'resumes_post_unknown'
		end
	end

	def post
		@path = resumes_post_path
		if session[:auth] == "authenticated"
			render 'resumes_post_authenticated'
		else
			render 'resumes_post_unknown'
		end
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
	end

	
end