class AccountController < ApplicationController
	before_action :render_page
	def index
		if params[:page] == nil || params[:page] == "account_information"
			@info_selected = "selected" 
			@info_active = "active"
			@security_selected = ""
			@security_active = ""
			@email_selected = ""
			@email_active = ""
			@delete_selected = "" 
			@delete_active = ""
		elsif params[:page] == "security"
			@info_selected = "" 
			@info_active = ""
			@security_selected = "selected"
			@security_active = "active"
			@email_selected = ""
			@email_active = ""
			@delete_selected = "" 
			@delete_active = ""
		elsif params[:page] == "manage_email"
			@info_selected = "" 
			@info_active = ""
			@security_selected = ""
			@security_active = ""
			@email_selected = "selected"
			@email_active = "active"
			@delete_selected = "" 
			@delete_active = ""
		elsif params[:page] == "delete_account"
			@info_selected = "" 
			@info_active = ""
			@security_selected = ""
			@security_active = ""
			@email_selected = ""
			@email_active = ""
			@delete_selected = "selected" 
			@delete_active = "active"
		end
	end


	private
	def render_page
		@account_view = params[:page]
		@account_view ||= 'account_information'
	end
end