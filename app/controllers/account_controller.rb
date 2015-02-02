class AccountController < ApplicationController
	before_action :render_page
	def index
	end

	private
	def render_page
		@account_view = params[:page]
		@account_view ||= 'account_information'
	end
end