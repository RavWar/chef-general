include_recipe 'user'

user_account node[:general][:user] do
  password node[:general][:password]
  system_user true
  gid 'sudo'
end

group node[:general][:group] do
  members node[:general][:user]
  append true
end

include_recipe 'nginx'
include_recipe 'chruby::system'
include_recipe 'database::postgresql'
