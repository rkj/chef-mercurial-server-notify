# Cookbook Name:: mercurial-server-notify
# Recipe:: default
#
# Copyright 2011, Itiner
#

package "procmail"

template "/etc/mercurial-server/remote-hgrc.d/notify.rc" do
  source "notify.rc"
  owner "root"
  group "root"
  mode "0644"
end

template "/etc/mercurial-server/styles/notify.style" do
  source "notify.style"
  owner "root"
  group "root"
  mode "0644"
end

