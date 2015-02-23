module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'backlogs', :partial => 'projects/index', :label => 'Backlogs'},
			{:name => 'scrum', :partial => 'projects/index', :label => 'Scrum'},
			{:name => 'reports', :partial => 'projects/index', :label => 'Reports'}
		]
	end
end
