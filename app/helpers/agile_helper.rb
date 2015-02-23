module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'backlogs', :partial => 'agile_backlogs/index', :label => 'Backlogs'},
			{:name => 'scrum', :partial => 'agile_backlogs/index', :label => 'Scrum'},
			{:name => 'reports', :partial => 'agile_backlogs/index', :label => 'Reports'}
		]
	end
end
