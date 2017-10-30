#
# Cookbook:: DB
# Recipe:: mysql
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#Load MySQL passwords from the passwords databag.
#passwords = data_bag_item('passwords', 'mysql')

#Configure the MySQL client
mysql_client 'default' do
  action :create
end


mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'changeme'
  action [:create, :start]
end

