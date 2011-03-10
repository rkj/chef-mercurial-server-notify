# Cookbook Name:: mercurial-server-notify
# Recipe:: default
#
# Copyright 2011, Itiner
#

package "procmail"

template "#{node[:mercurial][:server][:etc]}/remote-hgrc.d/notify.rc" do
  source "notify.rc.erb"
  owner "root"
  group "root"
  mode "0644"
end

template "#{node[:mercurial][:server][:etc]}/notify.style" do
  source "notify.style.erb"
  owner "root"
  group "root"
  mode "0644"
end

template "#{node[:mercurial][:server][:home]}/.procmailrc" do
  source "procmailrc.erb"
  owner "hg"
  group "hg"
  mode "0644"
end

cookbook_file "#{node[:mercurial][:server][:home]}/.forward" do
  action :create
  mode 0644
  owner "hg"
  group "hg"
  source "forward"
end
