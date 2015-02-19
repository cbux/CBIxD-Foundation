class HomeController < ApplicationController
	before_action :debug, :statuses
	def index
		if session[:auth] == "authenticated"
			render 'dashboard'
		else
			render 'index'
		end
	end

	private
	def statuses
		if params[:status] == "resume_deleted"
			@success_message = "Your resume has been deleted"
		end
		if params[:status] == "cover_letter_deleted"
			@success_message = "Your cover letter has been deleted"
		end
	end
  def debug
  	if params[:action] == "index"
  		@statuses = {"sign out" => {:signed_out => "true"}, "account deleted" => {:deleted_account => "true"}}
  	end
  end
end