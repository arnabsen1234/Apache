#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end 

file '/var/www/html/index.html' do
  content "<html><h1>Hello World</h1>
  <h2>IP Address is #{node['ipaddress']}</h2>
  <h2>Node Name is #{node['hostname']}</h2>
</html>"
end 


service 'httpd' do
 action [ :enable, :start]
end
