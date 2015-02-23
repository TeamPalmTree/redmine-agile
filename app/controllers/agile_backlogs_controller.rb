class AgileBacklogsController < ApplicationController
	unloadable
	
	def index
	end

	def find_project
    # @project variable must be set before calling the authorize filter
    @project = Project.find(params[:project_id])
  end

end