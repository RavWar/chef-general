include_recipe 'user'

user_account node[:general][:user] do
  system_user true
  gid 'sudo'
end

group node[:general][:group] do
  members node[:general][:user]
  append true
end

include_recipe 'git'
include_recipe 'nginx'

nginx_site 'default' do
  enable false
end

include_recipe 'chruby::system'
include_recipe 'database::postgresql'
