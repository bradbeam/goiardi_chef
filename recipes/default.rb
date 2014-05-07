#
# Cookbook Name:: goiardi_chef
# Recipe:: default
#
# Copyright (C) 2014 Brad Beam
#
# All rights reserved - Do Not Redistribute
#

include_recipe "golang::packages"

directory node['goiardi']['conf']['conf-root'] do
  action :create
end

directory node['goiardi']['data-dir'] do
  action :create
end

template File.join(node['goiardi']['conf']['conf-root'],node['goiardi']['conf-filename']) do
  source "goiardi.conf.erb"
  cookbook "goiardi_chef"
  action :create
end

template "/etc/init.d/goiardi" do
  source "goiardi-service.erb"
  cookbook "goiardi_chef"
  action :create
  mode 00755
end

case node.platform_family
when "rhel"
  lsbpackage = "redhat-lsb"
when "debian"
  lsbpackage = "lsb-release"
end

package lsbpackage do
  action :install
end

service "goiardi" do
  action [:enable, :start]
end
