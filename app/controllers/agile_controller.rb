class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_tabs, :only => :index
	before_filter :find_backlogs, :only => [:index, :fetch_backlogs]
	before_filter :find_boards, :only => [:index, :fetch_boards]
	before_filter :find_graphs, :only => [:index, :fetch_graphs]

	include AgileHelper

	def index
	end

	def find_project
		@project = Project.find(params[:project_id])
	end

	def find_tabs
		@tabs = [
	    	{:name => 'backlogs', :partial => 'agile/backlogs', :refresh => '/projects/#{@project.id}/agile/backlogs/fetch', :label => :label_backlog_plural},
	    	{:name => 'boards', :partial => 'agile/backlogs', :refresh => '/projects/#{@project.id}/agile/backlogs/fetch', :label => :label_board_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :refresh => '/projects/#{@project.id}/agile/backlogs/fetch', :label => :label_graph_plural}
		]
		@selected_tab = params[:tab] ? params[:tab] : @tabs.first[:name]
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

	def fetch

		@partial = params[:tab];	
		@result = instance_variable_get('@#{partial}');
	    respond_to do |format|
	        format.js
	    end

	end

end
