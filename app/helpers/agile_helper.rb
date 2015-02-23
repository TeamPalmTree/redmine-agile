module AgileHelper
	def agile_tabs
	    tabs = [
	    	{:name => 'backlogs', :partial => 'agile/backlogs', :label => :label_backlog_plural},
	    	{:name => 'kanban_board', :partial => 'agile/backlogs', :label => :label_kanban_board},
			{:name => 'scrum_boards', :partial => 'agile/backlogs', :label => :label_scrum_board_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :label => :label_graph_plural}
		]
	end
end
