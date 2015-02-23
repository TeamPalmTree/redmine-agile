module AgileHelper
	def agile_tabs
    tabs = [
		{:name => 'backlogs', :partial => 'backlogs', :label => 'Backlogs'},
		{:name => 'scrum', :partial => 'scrum', :label => 'Scrum'},
		{:name => 'reports', :partial => 'reports', :label => 'Reports'}
    ]
  end
end
