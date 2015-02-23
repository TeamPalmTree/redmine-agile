# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
#get 'agile', :to => 'agile#index'
get 'agile/backlogs', :to => 'agile_backlogs#index'
get '/projects/:project_id/agile', :to => 'agile#index', :as => 'project_agile'