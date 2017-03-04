data_bag_obj=data_bag_item('httpd','httpd')


package node.default['packagename'] do
action :install
end

file node.default['tem_file'] do
  content IO.read(node.default['conf_dir'])
  action :create
end

template node.default['conf_dir'] do
source 'httpd.conf.erb'
variables ( { :http_port => data_bag_obj['http_port'] } )
end

service node.default['packagename'] do
action [:enable, :start]
end

