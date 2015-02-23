module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'backlogs', :partial => 'backlogs', :label => 'Backlogs'},
			{:name => 'scrum', :partial => 'backlogs', :label => 'Scrum'},
			{:name => 'reports', :partial => 'backlogs', :label => 'Reports'}
		]
	end
end
