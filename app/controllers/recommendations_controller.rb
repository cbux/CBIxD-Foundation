class RecommendationsController < ApplicationController
	before_action :debug
	def index
        @results = params[:results]

        if params[:page] == "resumerecs"
          render 'recommendations'
            
        end

        if params[:page] == "similarjobs"
          render 'recommendations'
        end

        if params[:results] == nil
          params[:results] = "50"
        end


        if params[:auth] == nil
          params[:auth] = "known"
        end
	end

  def resumerecs
    render 'recommendations/resumerecs'
  end 

  def similarjobs
    render 'recommendations/similarjobs'
  end 

	private

  def auto_recs
  # If results nil default to 50 results
    if params[:results] == nil
      params[:results] = "50"
    end
  end

	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
  end
end