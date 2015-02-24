class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_backlogs, :only => [:index, :backlogs]
	before_filter :find_board, :only => [:board]
	before_filter :find_report, :only => [:report]

	include AgileHelper

	def index
		@partial = 'backlogs'
		@object = @backlogs
	end

	def find_project
		@project = Project.find(params[:project_id])
	end

	def find_backlogs
		@backlogs = Issue.all
	end

	def find_board
		@board = Issue.all
	end

	def find_report
		@report = Issue.all
	end

	def backlogs
		@partial = 'backlogs'
		@object = @backlogs
		respond_to do |format|
			format.html { render 'index' }
			format.js { render 'fetch' }
		end
	end

	def board
		@partial = 'board'
		@object = @board
		respond_to do |format|
			format.html { render 'index' }
			format.js { render 'fetch' }
		end
	end

	def report
		@partial = 'report'
		@object = @report
		respond_to do |format|
			format.html { render 'index' }
			format.js { render 'fetch' }
		end
	end

end
