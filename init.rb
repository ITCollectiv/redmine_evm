require 'redmine_evm'

Redmine::Plugin.register :redmine_evm do
  name 'Redmine EVM plugin'
  author 'Imaginary Cloud (http://imaginarycloud.com)'
  description 'Graphical indicators for Earned Value Management'
  version '0.0.1'
  url 'https://github.com/imaginary-cloud/redmine_evm'
  author_url 'mailto:info@imaginarycloud.com'


  project_module :evm do
  	permission :view_evms, { :evms => [:index, :chart_data, :versions_chart_data, :evm_variables] }
  	permission :view_baselines, { :baselines => [:index, :show] }
    permission :manage_baselines, { :baselines => [:edit, :destoy, :new, :create, :update]}
  end
  menu :project_menu, :evms,
       { :controller => 'evms', :action => 'index' },
       :caption => 'EVM', :after => :files, :param => :project_id
end
