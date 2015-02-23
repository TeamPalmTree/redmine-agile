# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'backlogs',
	:controller => :backlogs, :action => :index,
	:as => :backlogs