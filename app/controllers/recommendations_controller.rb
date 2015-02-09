class RecommendationsController < ApplicationController
	def index
        @results = params[:results]

        if params[:page] == "resumerecs"
            
        end

        if params[:page] == "similarjobs"
            
        end
	end
end