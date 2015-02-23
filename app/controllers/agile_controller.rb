class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize

	helper :agile

	def index
	end

	def find_project
		# @project variable must be set before calling the authorize filter
		@project = Project.find(params[:project_id])
	end

	def issues
		@issues = Issue.where(:project_id => params[:cat_id])
	    respond_to do |format|
	        format.js
	    end
	end

end
