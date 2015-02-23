module AgileHelper
	def agile_tabs
	    tabs = [
			{:name => 'backlogs', :partial => 'agile/backlogs', :label => 'Backlogs'},
			{:name => 'scrum', :partial => 'agile/backlogs', :label => 'Scrum'},
			{:name => 'reports', :partial => 'agile/backlogs', :label => 'Reports'}
		]
	end
end
