module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'sprints', :partial => 'agile/backlogs', :label => :label_sprint_plural},
			{:name => 'backlogs', :partial => 'agile/backlogs', :label => :label_backlog_plural},
			{:name => 'graphs', :partial => 'agile/backlogs', :label => :label_graph_plural}
		]
	end
end
