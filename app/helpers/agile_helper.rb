module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'boards', :partial => 'agile/backlogs', :label => :label_board_plural},
			{:name => 'backlogs', :partial => 'agile/backlogs', :label => :label_backlog_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :label => :label_graph_plural}
		]
	end
end
