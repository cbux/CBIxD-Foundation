class SavedSearchesController < ApplicationController
    before_action :debug
    def index
    end

    private
    def debug
    if params[:action] == "index"
        @statuses = nil
    end
  end
end