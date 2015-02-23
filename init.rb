Redmine::Plugin.register :redmnine_agile do
  name 'Redmnine Agile Plugin'
  author 'Alex Groleau'
  description 'Bringing the agile method to Redmine for real.'
  version '0.0.1'
  url 'https://github.com/TeamPalmTree/redmine-agile'
  author_url 'https://github.com/awgneo'
  permission :backlogs, { :backlogs => [:index] }, :public => true
  menu :project_menu, :agile, { :controller => 'backlogs', :action => 'index' }, :caption => 'Agile', :after => :activity, :param => :project_id
end
