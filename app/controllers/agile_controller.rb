class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize, :only => :index
	before_filter :find_tabs, :only => :index

	helper :agile

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
		
	end

end
