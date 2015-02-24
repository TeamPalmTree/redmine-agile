class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_tabs, :only => :index
	before_filter :find_backlogs, :only => [:index, :backlogs]
	before_filter :find_boards, :only => [:fetch_boards]
	before_filter :find_graphs, :only => [:fetch_graphs]

	include AgileHelper

	def index
		@boards = Issue.all
	end

	def find_project
		@project = Project.find(params[:project_id])
	end

	def find_backlogs
		@backlogs = Issue.all
	end

	def find_boards
		@boards = Issue.all
	end

	def find_graphs
		@graphs = Issue.all
	end

	def backlogs

	end

	def boards

	end

	def graphs

	end

end
