module AgileHelper
	def agile_tabs
	    tabs = [
	    	{:name => 'backlogs', :partial => 'agile/backlogs', :refresh => 'agile/backlogs/all', :label => :label_backlog_plural},
	    	{:name => 'boards', :partial => 'agile/backlogs', :refresh => 'agile/backlogs/all', :label => :label_board_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :refresh => 'agile/backlogs/all', :label => :label_graph_plural}
		]
	end
end
