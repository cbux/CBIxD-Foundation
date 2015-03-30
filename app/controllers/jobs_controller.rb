class JobsController < ApplicationController
	before_action :auto_jobs, :all_results, :debug, :statuses
	def index
		if params[:experiment] == "true"
			render 'jobs/index2'
		end
	end

	def job_count
		@jobcount = 1
	end

	def after_apply
		render 'jobs/index'
	end

	def job_emailed
			params[:success]= "true"
			@success_message = "Your email to [email name] has been sent!"
			render 'jobs/index'
	end

	def job_saved
			params[:success]= "true"
			@success_message = "[Job Name] has been saved"
			render 'jobs/index'
	end

	def expired_job
		params[:warning]= "true"
		@warning_message = 'This job is expired. Sales | In-Store Sales Rep | Quick Advancement Potential <br> We found these close matches instead.'
		render 'jobs/index'
	end

	def jdp
		if params[:branding]
		else
			params[:branding] = "unbranded"
		end
	end

	def job_saved_jdp
			params[:success]= "true"
			@success_message = "[Job Name] has been saved"
			render 'jobs/jdp'
	end

	def job_emailed_jdp
			params[:success]= "true"
			@success_message = "Your email to [email name] has been sent!"
			render 'jobs/jdp'
	end

  
  	def mobile_filters
	end

	def find_jobs_searchstate
		@findjobbystate ={
			"Alabama" => "alabama",
			"Alaska" => "alaska",
			"Arizona" => "arizona", 
			"Arkansas" => "arkansas", 
			"California" => "california", 
			"Colorado" => "colorado", 
			"Connecticut" => "connecticut", 
			"Delaware" => "delaware",
			"Florida" => "florida", 
			"Georgia" => "georgia", 
			"Hawaii" => "hawaii", 
			"Idaho" => "idaho", 
			"Illinois" => "illinois", 
			"Indiana" => "indiana", 
			"Iowa" => "iowa", 
			"Kansas" => "kansas", 
			"Kentucky" => "kentucky", 
			"Louisiana" => "louisiana",
			"Maine" => "maine", 
			"Maryland" => "maryland", 
			"Massachusetts" => "massachusetts", 
			"Michigan" => "michigan", 
			"Minnesota" => "minnesota", 
			"Mississippi" => "mississippi", 
			"Missouri" => "missouri", 
			"Montana" => "montana", 
			"Nebraska" => "nebraska", 
			"Nevada" => "nevada", 
			"New Hampshire" => "new_hampshire",
			"New Jersey" => "new_jersey", 
			"New Mexico" => "new_mexico", 
			"New York" => "new_york", 
			"North Carolina" => "north_carolina", 
			"North Dakota" => "north_dakota", 
			"Ohio" => "ohio", 
			"Oklahoma" => "oklahoma", 
			"Oregon" => "oregon", 
			"Pennsylvania" => "pennsylvania",
			"Rhode Island" => "rhode_island", 
			"South Carolina" => "south_carolina", 
			"South Dakota" => "south_dakota", 
			"Tennessee" => "tennessee", 
			"Texas" => "texas", 
			"Utah" => "utah", 
			"Vermont" => "vermont", 
			"Virginia" => "virginia", 
			"Washington" => "washington", 
			"West Virginia" => "west_virginia", 
			"Wisconsin" => "wisconsin", 
			"Wyoming" => "wyoming"
		}
	end


  private
  def auto_jobs
  # If results nil default to 25 results
		if params[:results] == nil
			params[:results] = "46"
		end
  end

  def statuses
  	if params[:status] == "email_sent"
  		@success_message = "Your email to [email name] has been sent!"
  	end
  end
	
	def all_results

		# Hash for Skills
		@location_filters = {
			"Atlanta, GA (945)" => "atlanta-ga",
			"Alpharetta, GA (323)" => "alpharetta-ga",
			"Norcross, GA (345)" => "norcross-ga",
			"Dunwwody, GA (356)" => "dunwoody-ga",
			"Lawrenceville, GA (401)" => "lawrenceville-ga",
			"Smyrna, GA (412)" => "smyrna-ga",
		}

		# Hash for Job Type Filters
		@job_type_filters = {
			"Full-time (5,678)" => "full-time",
			"Part-time (2,013)" => "part-time",
			"Contractor (1,456)" => "contractor",
			"Intern (876)" => "intern",
			"Seasonal/Temp (234)" => "seasonal-temp",
		}

		# Hash for Degree Requirements
		@degree_requirements_filters = {
			# "Not Specified" => "not-specified",
			"None (1,345)" => "none",
			"High School or less (67)" => "high-school",
			"Associate's Degree or less (234)" => "associate-degree",
			"Bachelor's Degree or less (256)" => "bachelor-degree",
			"Graduate Degree or less (23)" => "graduate-degree",
		}
		
		# Hash for Job Level
		@job_level_filters = {
			"Entry-level (123)" => "entry-level",
			"Mid-Level (67)" => "mid-level",
			"Senior (890)" => "senior",
			"Associate (345)" => "associate",
			"Director (49)" => "director",
			"Executive (10)" => 'executive',
			# "Not Applicable" => "not-applicable",
		}

		#Hash for salary
		@salary_filters = {
			"$40,000+ (4563)" => "$40,000+",
			"$60,000+ (945)" => "$60,000+",
			"$80,000+ (867)" => "$80,000+",
			"$100,000+ (701)" => "$100,000+",
			"$140,000+ (603)" => "$120,000+",
			"$160,000+ (545)" => "$160,000+",
			"$180,000+ (345)" => "$180,000+",
			"$200,000+ (222)" => "$200,000+",
		}


		# Hash for Category Filters
		@job_category_filters = {
			"Management (2345)" => "management",
			"Sales (345)" => "sales",
			"Information Technnology (789)" => "information technnology",
			"Customer Service (234)" => "customer service",
			"Health Care (1678)" => "health care",
			"Skilled Labor - Trades (1590)" => "skilled labor - trades",
			"Retail (1296)" => "retail",
			"Engineering (1234)" => "engineering",
			"Entry Level (1585)" => "entry level",
			"Accounting (1056)" => "accounting",
			"Finance (999)" => "finance",
			"Nurse (960)" => "nurse",
			"Transporation (895)" => "transporation",
			"Installation - Maintenance (789)" => "installation - maintenance",
			"Admin - Clerical (778)" => "admin - clerical",
			"Marketing (773)" => "marketing",
			"Professional Services (736)" => "professional services",
			"Other (734)" => "other",
			"Manufacturing (725)" => "manufacturing",
			"Automotive (634)" => "automotive",
			"Business Development (597)" => "business development",
			"General Business (551)" => "general business",
			"Consultant (550)" => "consultant",
			"Insurance (535)" => "insurance",
			"Design (523)" => "design",
			"Strategy - Planning (489)" => "strategy - planning",
			"Distribution - Shipping (346)" => "distribution - shipping",
			"Training (416)" => "training",
			"Human Resources (409)" => "human resources",
			"Restaurant - Food Service (189)" => "restaurant - food service",
			"QA - Quality Control (331)" => "qa - quality control",
			"General Labor (287)" => "general labor",
			"Education (246)" => "education",
			"Banking (234)" => "banking",
			"Warehouse (228)" => "warehouse",
			"Telecommunications (208)" => "telecommunications",
			"Construction (298)" => "construction",
			"Hospitality - Hotel (194)" => "hospitality - hotel",
			"Supply Chain (189)" => "supply chain",
			"Legal (176)" => "legal",
		}

		# Hash for Skills
		@skills_filters = {
			"Sales (4574)" => "sales",
			"Account Management (347)" => "account-management",
			"Accounting (987)" => "accounting",
			"Outside Sales (146)" => "outside-sales",
		}

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

		if params[:page] == "after_apply"
			
		end

		if params[:page]="job_emailed"

		end

		if params[:page]="job_saved"
				
		end


		if params[:page] == "expired_job"
			@info_message = " This job is expired. Sales | In-Store Sales Rep | Quick Advancement Potential
            We found these close matches instead."
		end
	end

	def debug
  	if params[:action] == "index"
  		@statuses = {
  			"Zero Results" => {
  				:results => "0"
  			}
  		}
  	end
  end
end