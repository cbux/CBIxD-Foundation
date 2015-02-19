class ResumesController < ApplicationController
	before_action :debug, :lang_list, :lang_prof

	def index
		@path = resumes_path
		if session[:auth] == "authenticated" && session[:resumes].to_i > 3
			params[:warning] = "true"
			@warning_message = "you got too many damn resumes"
			render 'manage_resumes_authenticated'
		elsif session[:auth] == "authenticated" && session[:resumes].to_i > 0
			render 'manage_resumes_authenticated'
		elsif session[:auth] == "authenticated"
			render 'resumes_post_authenticated'
		else
			render 'resumes_post_unknown'
		end
	end

	def post
		@path = resumes_post_path
		if session[:auth] == "authenticated"
			render 'resumes_post_authenticated'
		else
			render 'resumes_post_unknown'
		end
	end

	private
	def debug
  	if params[:action] == "index"
  		@statuses = nil
  	end
	end

	def lang_list
		@languages = [ "English", "Chinese-Mandarin", "Czech", "Danish", "Dutch", "Estonian", "Finnish", "French", "German", "Greek", "Hebrew", "Hungarian", "Icelandic", "Italian", "Japanese", "Korean", "Latvian", "Lithuanian", "Norwegian", "Polish", "Portuguese", "Romanian", "Russian", "Spanish", "Swedish", "Arabic", "Bengali", "Chinese-Cantonese", "Chinese-Taiwanese", "Hindi", "Urdu", "Armenian", "Assamese", "Farsi", "Gujarati", "Kannada", "Kashmiri", "Malayalam", "Oriya", "Pashto", "Punjabi", "Sanskrit", "Sindhi", "Tamil", "Telugu", "Turkish", "Uzbek", "Indonesian", "Catalán", "Euskera", "Vasco", "Bulgarian", "Croatian", "Macedonian", "Serbian", "Albanian", "Cambodian", "Chinese-Chinois", "Ukrainian", "Vietnamese", "Tagalog", "Thai", "Malay", "Others" ]
	end

	def lang_prof
		@language_proficiency = [ "No proficiency", "Elementary proficiency", "Limited working proficiency", "Professional working proficiency", "Full professional proficiency", "Native or bilingual proficiency"]
	end
end