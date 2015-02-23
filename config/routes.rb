# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/projects/:project_id/agile', :to => 'agile#index'
get '/projects/:project_id/agile/backlogs', :to => 'agile#index'