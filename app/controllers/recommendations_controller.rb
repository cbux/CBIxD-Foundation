class RecommendationsController < ApplicationController
	def index
        @results = params[:results]
	end
end