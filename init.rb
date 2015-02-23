Redmine::Plugin.register :redmnine_agile do
  name 'Redmnine Agile plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :project_menu, :polls, { :controller => 'agile_backlogs', :action => 'index' }, :caption => 'Agile', :after => :gantt, :param => :project_id
end
