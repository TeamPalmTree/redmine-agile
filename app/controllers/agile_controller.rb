class AgileController < ApplicationController
  unloadable

  	menu_item :agile

	before_filter :find_project, :authorize
	before_filter :find_backlogs, :only => [:index, :backlogs]
	before_filter :find_board, :only => [:board]
	before_filter :find_report, :only => [:report]

	include AgileHelper

	def index
		@partial = 'agile/backlogs'
		@locals = { :backlogs => Issue.all }
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
		@locals = { :backlogs => @backlogs }
		respond_to do |format|
			format.html { render 'agile/index' }
			format.js { render 'agile/fetch' }
		end
	end

	def board
		@partial = 'board'
		@locals = { :board => @board }
		respond_to do |format|
			format.html { render 'agile/index' }
			format.js { render 'agile/fetch' }
		end
	end

	def report
		@partial = 'report'
		@locals = { :report => @report }
		respond_to do |format|
			format.html { render 'agile/index' }
			format.js { render 'agile/fetch' }
		end
	end

end
