#
# Cookbook Name:: sam
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

data_bag_obj=data_bag_item('DATABAG','first')

template '/tmp/template' do 
   source 'samp.erb'
  variables( :when => data_bag_obj['when'],
             :value => data_bag_obj['value'] )
end

