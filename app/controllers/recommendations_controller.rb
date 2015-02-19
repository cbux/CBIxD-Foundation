class RecommendationsController < ApplicationController
	before_action :debug
	def index
        @results = params[:results]

        params[:page] = "recommendations"

        if params[:page] == "resumerecs"
          render 'recommendations'
            
        end

        if params[:page] == "similarrecs"
          render 'recommendations'
          params[:results] = "50"
            if params[:auth] == nil
              params[:auth] = "known"
            end
        end

        if params[:results] == nil
          params[:results] = "50"
        end


        if params[:auth] == nil
          params[:auth] = "known"
        end

                  # Change active sort
        if params[:sort] == nil || params[:sort] == "relevance"
          @sort_relevance = "active"
          @sort_date = ""
          @sort_location = ""
        elsif params[:sort] == "date"
          @sort_relevance = ""
          @sort_date = "active"
          @sort_location = ""
        elsif params[:sort] == "location"
          @sort_relevance = ""
          @sort_date = ""
          @sort_location = "active"
        end
	end

  def resumerecs
        if params[:results] == nil
          params[:results] = "50"
        end

        if params[:auth] == nil
          params[:auth] = "known"
        end

        # Change active sort
        if params[:sort] == nil || params[:sort] == "relevance"
          @sort_relevance = "active"
          @sort_date = ""
          @sort_location = ""
        elsif params[:sort] == "date"
          @sort_relevance = ""
          @sort_date = "active"
          @sort_location = ""
        elsif params[:sort] == "location"
          @sort_relevance = ""
          @sort_date = ""
          @sort_location = "active"
        end
  end 

  def similarrecs
        if params[:results] == nil
          params[:results] = "50"
        end

        if params[:auth] == nil
          params[:auth] = "known"
        end
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