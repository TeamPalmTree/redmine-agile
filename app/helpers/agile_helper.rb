module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'backlogs', :partial => 'agile/backlogs', :label => :label_backlog_plural},
			{:name => 'scrum', :partial => 'agile/backlogs', :label => :label_scrum_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :label => :label_graph_plural}
		]
	end
end
