class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_issues

	helper :agile

	def index
	end

	def find_project
		@project = Project.find(params[:project_id])
	end

	def find_issues
		@issues = Issue.where(:project_id => params[:project_id]).take
	end

	def backlogs
	    respond_to do |format|
	        format.js
	    end
	end

end
