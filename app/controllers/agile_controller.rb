class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_tabs, :only => :index

	helper AgileHelper

	def index
	end

	def find_project
		# @project variable must be set before calling the authorize filter
		@project = Project.find(params[:project_id])
	end

	def find_tabs
		@tabs = agile_tabs
	end

	def issues
		@issues = Issue.where(:project_id => params[:cat_id])
	    respond_to do |format|
	        format.js
	    end
	end

end
