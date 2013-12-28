#
# Cookbook Name:: variomedia-dns-updater
# Recipe:: default
#
# Copyright 2013, ka’imi
#

# install dependencies
%w{bash curl dnsutils}.each do |p|
  package p
end

application "variomedia-dns-updater" do
  path node['variomedia-dns-updater']['dir']
  owner node['variomedia-dns-updater']['user']

  repository node['variomedia-dns-updater']['repository']
  revision node['variomedia-dns-updater']['version']
end

cron "variomedia-dns-updater" do
  minute "*/#{node['variomedia-dns-updater']['frequency']}"
  user node['variomedia-dns-updater']['user']
  mailto node['variomedia-dns-updater']['email']
  command "cd #{node['variomedia-dns-updater']['dir']}/current; ./variomedia-dns-updater.sh -c #{node['variomedia-dns-updater']['dir']}/shared/nsupdate.conf >> #{node['variomedia-dns-updater']['logfile']}"
end

file node['variomedia-dns-updater']['logfile'] do
  user node['variomedia-dns-updater']['user']
end

template "#{node['variomedia-dns-updater']['dir']}/shared/nsupdate.conf" do
  source "nsupdate.conf.erb"
  user node['variomedia-dns-updater']['user']
end
