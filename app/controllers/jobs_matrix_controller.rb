class JobsMatrixController < ApplicationController
  def index
  end

  def jdp

  if params[:branding] == 'premium'
			@premium_component = "show-me"
		elsif params[:branding] == "standard"
			@standard_component = "show-me"		
		elsif params[:branding] == "basic"
			@basic_component = "show-me"
		elsif params[:branding] == "unbranded" || params[:branding] == nil
			@unbranded_component = "show-me"
		end
  end
end
