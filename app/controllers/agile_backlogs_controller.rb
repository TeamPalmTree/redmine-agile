class AgileBacklogsController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize, :only => :index

	helper :agile

	def index
		render "backlogs/index"
	end

	def find_project
		# @project variable must be set before calling the authorize filter
		@project = Project.find(params[:project_id])
	end

end
