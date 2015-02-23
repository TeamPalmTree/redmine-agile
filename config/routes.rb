# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/projects/:project_id/agile/(:tab)', :to => 'agile#index', as: 'agile'
get '/projects/:project_id/agile/:tab/fetch', :to => 'agile#fetch'