#
# Author:: MiYABiS
# Cookbook Name:: WCat
# Recipe:: default
#
# Copyright:: Copyright (c) 2013 MiYABiS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# remote_file "#{Chef::Config[:file_cache_path]}\\#{node['WCat']['package_name']}" do
#   source node['WCat']['url']
#   notifies :install, "windows_package[WCat]", :immediately
# end

# windows_package 'WCat' do
#   source Chef::Config[:file_cache_path] + '\\' + node['WCat']['package_name']
#   options '/passive'
#   timeout 180000
#   action :nothing
# end

windows_batch "setup_wcat" do
  code <<-EOH
  "%PROGRAMFILES%\\Internet Explorer\\iexplore.exe" "#{node['WCat']['url']}"
  EOH
  returns 1
end
