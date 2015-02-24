Redmine::Plugin.register :redmine_agile do
  name 'Redmnine Agile Plugin'
  author 'Alex Groleau'
  description 'Bringing the agile method to Redmine for real.'
  version '0.0.1'
  url 'https://github.com/TeamPalmTree/redmine-agile'
  author_url 'https://github.com/awgneo'
  permission :agile, { :agile => [:index, :backlogs, :board, :graph] }, :public => true
  menu :project_menu, :agile, { :controller => 'agile', :action => 'index' }, :caption => 'Agile', :after => :issues, :param => :project_id
end
