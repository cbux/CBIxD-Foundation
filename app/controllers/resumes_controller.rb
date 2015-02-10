class ResumesController < ApplicationController
	before_action :debug
	def index
	end
	def work
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
  end
end