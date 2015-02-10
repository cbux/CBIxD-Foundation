class RecommendationsController < ApplicationController
	before_action :debug
	def index
        @results = params[:results]

        if params[:page] == "resumerecs"
            
        end

        if params[:page] == "similarjobs"
            
        end
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
  end
end