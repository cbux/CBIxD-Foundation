class UserController < ApplicationController
	before_action :debug
	def index
	end

	def sign_up
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
  end
end