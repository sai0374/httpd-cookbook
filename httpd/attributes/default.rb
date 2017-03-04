
default['http_port'] = '90'

if node.default['platform_family']='rhel' 
  default['packagename'] = 'httpd'
  default['conf_dir'] = '/etc/httpd/conf/httpd.conf'
  default['tem_file'] = '/etc/cookbooks/httpd/templates/httpd.conf.erb'
else node.default['platform_family']='debian'
  default['packagename'] = 'apache2'
  default['conf_dir'] = '/etc/apache2/ports.conf'
  default['tem_file'] = '/etc/cookbooks/httpd/templates/ports.conf.erb'
end

  	
