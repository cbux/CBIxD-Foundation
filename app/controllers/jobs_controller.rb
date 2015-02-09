class JobsController < ApplicationController
	def index
		# Hash for Job Type Filters
		@job_type_filters = {
			"full-time" => "Full Time",
			"part-time" => "Part Time",
			"contractor" => "Contractor",
			"intern" => "Intern",
			"seasonal-temp" => "Seasonal/Temp",
		}

		# Hash for Degree Requirements
		@degree_requirements_filters = {
			"not-specified" =>  "Not Specified",
			"none" => "None",
			"high-school" => "High School",
			"2-year-degree" => "2 Year Degree",
			"4-year-degree" => "4 Year Degree",
			"graduate-degree" => "Graduate Degree",
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
			@success_message = "You have successfully applied for Practice Coordinator at Confidential in Atlanta, GA. 
			Your resume has been sent via email to the employer. You will receive an email confirmation once it is received by the employer."
		end

		if params[:page] == "account_information"
			@info_message = " This job is expired. Sales | In-Store Sales Rep | Quick Advancement Potential
            We found these close matches instead."
		end

		# If results nil default to 25 results
		if params[:results] == nil
			params[:results] = "25"
		end
	end

    def jdp_nonbranded
    end
end