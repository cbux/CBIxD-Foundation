class ApplicationController < ActionController::Base
	before_action :auth, :delete_account, :success, :resumes, :lang_list, :lang_prof, :debug_mode
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  

  private
  def auth
  	if params[:auth]
  		session[:auth] = params[:auth]
  	end
  	@auth = session[:auth]
  	@auth ||= "unknown"
  end

  def debug_mode
  	if params[:debug]
  		session[:debug] = params[:debug]
  	end
  	@debug = session[:debug]
  	@debug ||= "unknown"
  end

  def resumes
  	if params[:resumes]
  		session[:resumes] = params[:resumes]
  	end
  	session[:resumes] ||= 0
  end

  def success
  	if params[:action] == "after_apply"
  		params[:success] = "true"
  		@success_message = "You have successfully applied for Practice Coordinator at Confidential in Atlanta, GA. Your resume has been sent via email to the employer. You will receive an email confirmation once it is received by the employer."
  	end

    if params[:action] == "resume_recs"
      params[:success] = "true"
      @success_message = "You have successfully applied for Practice Coordinator at Confidential in Atlanta, GA. Your resume has been sent via email to the employer. You will receive an email confirmation once it is received by the employer."
    end

    if params[:action] == "job_emailed"
      params[:success] == "true"
      @success_message = "Your email to [email name] has been sent!"
    end

  end

  def delete_account
  	if params[:deleted_account] == "true"
  		@success_message = "You're Careerbuilder Account has been deleted"
  	end
  end

  def job_collapse
    @jobcollapse = params[:jobcollapse]
  end

  def lang_list
		@languages = [ "English", "Chinese-Mandarin", "Czech", "Danish", "Dutch", "Estonian", "Finnish", "French", "German", "Greek", "Hebrew", "Hungarian", "Icelandic", "Italian", "Japanese", "Korean", "Latvian", "Lithuanian", "Norwegian", "Polish", "Portuguese", "Romanian", "Russian", "Spanish", "Swedish", "Arabic", "Bengali", "Chinese-Cantonese", "Chinese-Taiwanese", "Hindi", "Urdu", "Armenian", "Assamese", "Farsi", "Gujarati", "Kannada", "Kashmiri", "Malayalam", "Oriya", "Pashto", "Punjabi", "Sanskrit", "Sindhi", "Tamil", "Telugu", "Turkish", "Uzbek", "Indonesian", "Catalán", "Euskera", "Vasco", "Bulgarian", "Croatian", "Macedonian", "Serbian", "Albanian", "Cambodian", "Chinese-Chinois", "Ukrainian", "Vietnamese", "Tagalog", "Thai", "Malay", "Others" ]
	end

	def lang_prof
		@language_proficiency = [ "No proficiency", "Elementary proficiency", "Limited working proficiency", "Professional working proficiency", "Full professional proficiency", "Native or bilingual proficiency"]
	end

end
